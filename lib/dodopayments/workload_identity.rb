# frozen_string_literal: true

module Dodopayments
  # Workload identity federation: exchange a short-lived OIDC token (JWT) from
  # your platform for a short-lived API access token.
  #
  # @example
  #   client = Dodopayments::Client.new(
  #     workload_identity: Dodopayments::WorkloadIdentity::Config.new(
  #       identity_provider_id: "wip_...",
  #       provider: Dodopayments::WorkloadIdentity.github_actions
  #     )
  #   )
  module WorkloadIdentity
    # @api private
    GRANT_TYPE = "urn:ietf:params:oauth:grant-type:token-exchange"

    # @api private
    SUBJECT_TOKEN_TYPE = "urn:ietf:params:oauth:token-type:jwt"

    # The client refreshes the access token when this many seconds or less remain.
    REFRESH_WINDOW_IN_SECONDS = 300

    # @api private
    PROVIDER_TIMEOUT_IN_SECONDS = 10

    # @api private
    KUBERNETES_TOKEN_PATH = "/var/run/secrets/tokens/dodo-token"

    # @api private
    GCP_METADATA_URL =
      "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/identity"

    # The values that a subject token provider gets on each token exchange.
    class Context
      # The base URL of the client.
      # @return [URI::Generic]
      attr_reader :base_url

      # The default audience: the origin of the client base URL.
      # @return [String]
      attr_reader :audience

      # @api private
      #
      # @param base_url [URI::Generic]
      # @param audience [String]
      def initialize(base_url:, audience:)
        @base_url = base_url
        @audience = audience
      end
    end

    # The `workload_identity` option of {Dodopayments::Client}.
    class Config
      # @return [String]
      attr_reader :identity_provider_id

      # @return [#call]
      attr_reader :provider

      # @param provider [#call] Returns the subject token (a JWT string). It can take one
      # argument, a {Dodopayments::WorkloadIdentity::Context}.
      #
      # @param identity_provider_id [String, nil] Defaults to `ENV["DODO_PAYMENTS_IDENTITY_PROVIDER_ID"]`
      def initialize(provider:, identity_provider_id: ENV["DODO_PAYMENTS_IDENTITY_PROVIDER_ID"])
        if identity_provider_id.nil? || identity_provider_id.to_s.empty?
          raise ArgumentError.new(
            "identity_provider_id is required, and can be set via environ: \"DODO_PAYMENTS_IDENTITY_PROVIDER_ID\""
          )
        end
        unless provider.respond_to?(:call)
          raise ArgumentError.new("provider must respond to `call`")
        end

        @identity_provider_id = identity_provider_id.to_s
        @provider = provider
      end

      # @api private
      #
      # @param value [Dodopayments::WorkloadIdentity::Config, Hash{Symbol=>Object}]
      #
      # @return [Dodopayments::WorkloadIdentity::Config]
      def self.coerce(value)
        case value
        in Dodopayments::WorkloadIdentity::Config
          value
        in Hash
          new(**value)
        else
          raise ArgumentError.new("workload_identity must be a #{name} or a Hash, got #{value.class}")
        end
      end

      # @return [String]
      def inspect = "#<#{self.class.name} identity_provider_id=#{@identity_provider_id}>"
    end

    # Caches the access token of one client. All methods are thread-safe.
    class Session
      # @return [String]
      attr_reader :identity_provider_id

      # @api private
      #
      # @param config [Dodopayments::WorkloadIdentity::Config]
      # @param context [Dodopayments::WorkloadIdentity::Context]
      # @param transport [Proc] Sends a request without the client credentials.
      def initialize(config:, context:, transport:)
        @identity_provider_id = config.identity_provider_id
        @provider = config.provider
        @context = context
        @transport = transport
        @mutex = Mutex.new
        @access_token = nil
        @expires_at = nil
      end

      # Returns a valid access token. This method does a token exchange if no token is
      # cached, or if 5 minutes or less remain. Concurrent callers share one exchange.
      #
      # @raise [Dodopayments::Errors::APIError]
      # @return [String]
      def access_token
        @mutex.synchronize do
          exchange! unless fresh?
          @access_token.to_s
        end
      end

      # @api private
      #
      # Clears the cache, but only if it still holds `token`.
      #
      # @param token [String, nil]
      def invalidate(token = nil)
        @mutex.synchronize do
          clear! if token.nil? || token == @access_token
        end
        nil
      end

      # Revokes the cached access token and clears the cache. Does nothing if no token
      # is cached.
      #
      # @raise [Dodopayments::Errors::APIError]
      def revoke
        token = @mutex.synchronize { @access_token }
        return if token.nil?

        begin
          @transport.call(
            method: :post,
            path: "workload-identity/token/revoke",
            headers: {"authorization" => "Bearer #{token}"},
            body: nil
          )
        ensure
          invalidate(token)
        end
        nil
      end

      # @return [String]
      def inspect = "#<#{self.class.name} identity_provider_id=#{@identity_provider_id}>"

      private def fresh?
        !@access_token.nil? && !@expires_at.nil? && @expires_at - Time.now > REFRESH_WINDOW_IN_SECONDS
      end

      private def clear!
        @access_token = nil
        @expires_at = nil
      end

      private def subject_token
        token = @provider.respond_to?(:arity) && @provider.arity.zero? ? @provider.call : @provider.call(@context)
        if !token.is_a?(String) || token.strip.empty?
          raise Dodopayments::Errors::Error.new("The workload identity provider did not return a token")
        end
        token.strip
      end

      private def exchange!
        clear!
        body = {
          grant_type: GRANT_TYPE,
          subject_token_type: SUBJECT_TOKEN_TYPE,
          subject_token: subject_token,
          identity_provider_id: @identity_provider_id
        }
        now = Time.now
        response = @transport.call(method: :post, path: "workload-identity/token", headers: {}, body: body)
        token = response.is_a?(Hash) ? response[:access_token] : nil
        if !token.is_a?(String) || token.empty?
          raise Dodopayments::Errors::Error.new("The token exchange response has no access_token")
        end

        @expires_at = expiry(response, now: now)
        @access_token = token
      end

      private def expiry(response, now:)
        expires_at = response[:expires_at]
        if expires_at.is_a?(String)
          begin
            return Time.iso8601(expires_at)
          rescue ArgumentError
            nil
          end
        end
        now + Float(response[:expires_in], exception: false).to_f
      end
    end

    class << self
      # GitHub Actions. The job must have the `id-token: write` permission.
      #
      # @param audience [String, nil] Defaults to the origin of the client base URL.
      #
      # @return [Proc]
      def github_actions(audience: nil)
        lambda do |context|
          url = env!("ACTIONS_ID_TOKEN_REQUEST_URL")
          request_token = env!("ACTIONS_ID_TOKEN_REQUEST_TOKEN")
          separator = url.include?("?") ? "&" : "?"
          uri = URI("#{url}#{separator}audience=#{CGI.escape(audience || context.audience)}")
          body = http_get(uri, {"authorization" => "bearer #{request_token}"})
          JSON.parse(body).fetch("value")
        end
      end

      # GitLab CI/CD. Declare the token in `id_tokens` of the job.
      #
      # @param env_var [String]
      #
      # @return [Proc]
      def gitlab(env_var: "DODO_PAYMENTS_ID_TOKEN") = ->(_context = nil) { env!(env_var) }

      # HCP Terraform (Terraform Cloud) dynamic credentials.
      #
      # @return [Proc]
      def terraform_cloud
        lambda do |_context = nil|
          ENV["TFC_WORKLOAD_IDENTITY_TOKEN"] || env!("TFC_WORKLOAD_IDENTITY_TOKEN_DODO")
        end
      end

      # Google Cloud: the metadata server of the attached service account.
      #
      # @param audience [String, nil] Defaults to the origin of the client base URL.
      #
      # @return [Proc]
      def gcp(audience: nil)
        lambda do |context|
          query = URI.encode_www_form(audience: audience || context.audience, format: "full")
          http_get(URI("#{GCP_METADATA_URL}?#{query}"), {"metadata-flavor" => "Google"})
        end
      end

      # Vercel OIDC federation.
      #
      # @return [Proc]
      def vercel = ->(_context = nil) { env!("VERCEL_OIDC_TOKEN") }

      # Kubernetes: a projected service account token. The file is read on each exchange.
      #
      # @param path [String]
      #
      # @return [Proc]
      def kubernetes(path: KUBERNETES_TOKEN_PATH) = file(path: path)

      # A token file. The file is read on each exchange.
      #
      # @param path [String, nil] Defaults to `ENV["DODO_PAYMENTS_IDENTITY_TOKEN_FILE"]`
      #
      # @return [Proc]
      def file(path: ENV["DODO_PAYMENTS_IDENTITY_TOKEN_FILE"])
        if path.nil? || path.empty?
          raise ArgumentError.new(
            "path is required, and can be set via environ: \"DODO_PAYMENTS_IDENTITY_TOKEN_FILE\""
          )
        end
        ->(_context = nil) { File.read(path).strip }
      end

      # AWS: wraps your function that returns the JWT, for example from STS
      # `GetWebIdentityToken`.
      #
      # @param fn [#call, nil]
      #
      # @return [Proc]
      def aws(fn = nil, &blk)
        callable = fn || blk
        raise ArgumentError.new("aws requires a function or a block") if callable.nil?
        ->(_context = nil) { callable.call }
      end

      # A fixed token. Use it for tests.
      #
      # @param token [String]
      #
      # @return [Proc]
      def static(token) = ->(_context = nil) { token }

      # Finds a token source in the environment, in this order: GitHub Actions, HCP
      # Terraform, `ENV["DODO_PAYMENTS_IDENTITY_TOKEN_FILE"]`, and the Kubernetes path.
      #
      # @return [Proc, nil] `nil` if no source is found.
      def auto
        if ENV["ACTIONS_ID_TOKEN_REQUEST_URL"] && ENV["ACTIONS_ID_TOKEN_REQUEST_TOKEN"]
          return github_actions
        end
        if ENV["TFC_WORKLOAD_IDENTITY_TOKEN"] || ENV["TFC_WORKLOAD_IDENTITY_TOKEN_DODO"]
          return terraform_cloud
        end
        path = ENV["DODO_PAYMENTS_IDENTITY_TOKEN_FILE"]
        return file(path: path) unless path.nil? || path.empty?
        return kubernetes if File.file?(KUBERNETES_TOKEN_PATH)
        nil
      end

      private def env!(name)
        value = ENV[name]
        if value.nil? || value.empty?
          raise Dodopayments::Errors::Error.new("The environment variable #{name} is not set")
        end
        value
      end

      private def http_get(uri, headers)
        response = Net::HTTP.start(
          uri.host,
          uri.port,
          use_ssl: uri.scheme == "https",
          open_timeout: PROVIDER_TIMEOUT_IN_SECONDS,
          read_timeout: PROVIDER_TIMEOUT_IN_SECONDS
        ) do |http|
          http.get(uri.request_uri, headers)
        end
        unless response.is_a?(Net::HTTPSuccess)
          raise Dodopayments::Errors::Error.new(
            "The subject token request to #{uri.host} failed with status #{response.code}"
          )
        end
        response.body.to_s
      end
    end
  end
end

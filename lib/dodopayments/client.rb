# frozen_string_literal: true

module Dodopayments
  class Client < Dodopayments::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    # @type [Hash{Symbol=>String}]
    ENVIRONMENTS = {live_mode: "https://live.dodopayments.com", test_mode: "https://test.dodopayments.com"}
    # rubocop:enable Style/MutableConstant

    # Bearer Token for API authentication
    # @return [String, nil]
    attr_reader :bearer_token

    # @return [String, nil]
    attr_reader :webhook_key

    # Workload identity session, or `nil` if the client uses a bearer token.
    #
    # @return [Dodopayments::WorkloadIdentity::Session, nil]
    attr_reader :workload_identity

    # @return [Dodopayments::Resources::CheckoutSessions]
    attr_reader :checkout_sessions

    # @return [Dodopayments::Resources::Payments]
    attr_reader :payments

    # @return [Dodopayments::Resources::Subscriptions]
    attr_reader :subscriptions

    # @return [Dodopayments::Resources::Invoices]
    attr_reader :invoices

    # @return [Dodopayments::Resources::Licenses]
    attr_reader :licenses

    # @return [Dodopayments::Resources::LicenseKeys]
    attr_reader :license_keys

    # @return [Dodopayments::Resources::LicenseKeyInstances]
    attr_reader :license_key_instances

    # @return [Dodopayments::Resources::Customers]
    attr_reader :customers

    # @return [Dodopayments::Resources::Blocklist]
    attr_reader :blocklist

    # @return [Dodopayments::Resources::Refunds]
    attr_reader :refunds

    # @return [Dodopayments::Resources::Disputes]
    attr_reader :disputes

    # @return [Dodopayments::Resources::Payouts]
    attr_reader :payouts

    # @return [Dodopayments::Resources::Products]
    attr_reader :products

    # @return [Dodopayments::Resources::Misc]
    attr_reader :misc

    # @return [Dodopayments::Resources::Discounts]
    attr_reader :discounts

    # @return [Dodopayments::Resources::Addons]
    attr_reader :addons

    # @return [Dodopayments::Resources::Brands]
    attr_reader :brands

    # @return [Dodopayments::Resources::Webhooks]
    attr_reader :webhooks

    # @return [Dodopayments::Resources::WebhookEvents]
    attr_reader :webhook_events

    # @return [Dodopayments::Resources::UsageEvents]
    attr_reader :usage_events

    # @return [Dodopayments::Resources::Meters]
    attr_reader :meters

    # @return [Dodopayments::Resources::Balances]
    attr_reader :balances

    # @return [Dodopayments::Resources::CreditEntitlements]
    attr_reader :credit_entitlements

    # @return [Dodopayments::Resources::Entitlements]
    attr_reader :entitlements

    # @return [Dodopayments::Resources::ProductCollections]
    attr_reader :product_collections

    # @return [Dodopayments::Resources::Moderation]
    attr_reader :moderation

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @bearer_token.nil?

      {"authorization" => "Bearer #{@bearer_token}"}
    end

    # @api private
    #
    # With workload identity, a 401 response clears the cached access token. The
    # client then gets a new access token and sends the request one more time.
    #
    # @param req [Hash{Symbol=>Object}]
    #
    # @raise [Dodopayments::Errors::APIError]
    # @return [Object]
    def request(req)
      return super if @workload_identity.nil?

      token = @workload_identity.access_token
      begin
        super(workload_identity_authorize(req, token))
      rescue Dodopayments::Errors::AuthenticationError
        @workload_identity.invalidate(token)
        super(workload_identity_authorize(req, @workload_identity.access_token))
      end
    end

    # @api private
    #
    # @param req [Hash{Symbol=>Object}]
    # @param token [String]
    #
    # @return [Hash{Symbol=>Object}]
    private def workload_identity_authorize(req, token)
      {**req, headers: {**req[:headers].to_h, "authorization" => "Bearer #{token}"}}
    end

    # @api private
    #
    # Sends a workload identity request without the client credentials. It retries
    # connection errors and 5xx responses, but not 4xx responses.
    #
    # @param method [Symbol]
    # @param path [String]
    # @param headers [Hash{String=>String}]
    # @param body [Object, nil]
    #
    # @raise [Dodopayments::Errors::APIError]
    # @return [Object]
    private def workload_identity_request(method:, path:, headers:, body:)
      url = Dodopayments::Internal::Util.join_parsed_uri(@base_url_components, {path: path})
      headers = Dodopayments::Internal::Util.normalized_headers(@headers.except("authorization"), headers)
      encoded = nil
      if body.nil?
        headers.delete("content-type")
      else
        headers, encoded = Dodopayments::Internal::Util.encode_content(headers, body)
      end
      request = {method: method, url: url, headers: headers, body: encoded, max_retries: 0, timeout: @timeout}

      retry_count = 0
      begin
        _, response, stream = send_request(
          request,
          redirect_count: 0,
          retry_count: retry_count,
          send_retry_header: true
        )
      rescue Dodopayments::Errors::APIConnectionError, Dodopayments::Errors::InternalServerError => e
        if retry_count < @max_retries
          sleep(retry_delay(e.headers.to_h, retry_count: retry_count))
          retry_count += 1
          retry
        end
        raise workload_identity_error(e)
      rescue Dodopayments::Errors::APIStatusError => e
        raise workload_identity_error(e)
      end

      response_headers = Dodopayments::Internal::Util.normalized_headers(response.each_header.to_h)
      Dodopayments::Internal::Util.decode_content(response_headers, stream: stream, suppress_error: true)
    end

    # @api private
    #
    # @param error [Dodopayments::Errors::APIError]
    #
    # @return [Dodopayments::Errors::APIError]
    private def workload_identity_error(error)
      return error unless error.is_a?(Dodopayments::Errors::APIStatusError)

      body = error.body
      details = body.is_a?(Hash) ? [body[:error], body[:error_description]].compact : []
      message = ["Workload identity request failed with status #{error.status}", *details].join(": ")
      Dodopayments::Errors::APIStatusError.for(
        url: error.url,
        status: error.status.to_i,
        headers: error.headers,
        body: body,
        request: nil,
        response: nil,
        message: message
      )
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param bearer_token [String, nil] Bearer Token for API authentication Defaults to `ENV["DODO_PAYMENTS_API_KEY"]`
    #
    # @param webhook_key [String, nil] Defaults to `ENV["DODO_PAYMENTS_WEBHOOK_KEY"]`
    #
    # @param workload_identity [Dodopayments::WorkloadIdentity::Config, Hash{Symbol=>Object}, nil] Exchange an OIDC token for an access token, instead of a bearer token. See
    # {Dodopayments::WorkloadIdentity}.
    #
    # @param environment [:live_mode, :test_mode, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `live_mode` corresponds to `https://live.dodopayments.com`
    # - `test_mode` corresponds to `https://test.dodopayments.com`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["DODO_PAYMENTS_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      bearer_token: nil,
      webhook_key: ENV["DODO_PAYMENTS_WEBHOOK_KEY"],
      workload_identity: nil,
      environment: nil,
      base_url: ENV["DODO_PAYMENTS_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= Dodopayments::Client::ENVIRONMENTS.fetch(environment&.to_sym || :live_mode) do
        message = "environment must be one of #{Dodopayments::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      unless bearer_token.nil? || workload_identity.nil?
        raise ArgumentError.new("bearer_token and workload_identity cannot be used together")
      end
      bearer_token = ENV["DODO_PAYMENTS_API_KEY"] if bearer_token.nil? && workload_identity.nil?
      if bearer_token.nil? && workload_identity.nil? && !ENV["DODO_PAYMENTS_IDENTITY_PROVIDER_ID"].to_s.empty?
        provider = Dodopayments::WorkloadIdentity.auto
        workload_identity = {provider: provider} unless provider.nil?
      end
      workload_identity = Dodopayments::WorkloadIdentity::Config.coerce(workload_identity) unless workload_identity.nil?

      if bearer_token.nil? && workload_identity.nil?
        raise ArgumentError.new("bearer_token is required, and can be set via environ: \"DODO_PAYMENTS_API_KEY\"")
      end

      headers = {}
      custom_headers_env = ENV["DODO_PAYMENTS_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @bearer_token = bearer_token&.to_s
      @webhook_key = webhook_key&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @checkout_sessions = Dodopayments::Resources::CheckoutSessions.new(client: self)
      @payments = Dodopayments::Resources::Payments.new(client: self)
      @subscriptions = Dodopayments::Resources::Subscriptions.new(client: self)
      @invoices = Dodopayments::Resources::Invoices.new(client: self)
      @licenses = Dodopayments::Resources::Licenses.new(client: self)
      @license_keys = Dodopayments::Resources::LicenseKeys.new(client: self)
      @license_key_instances = Dodopayments::Resources::LicenseKeyInstances.new(client: self)
      @customers = Dodopayments::Resources::Customers.new(client: self)
      @blocklist = Dodopayments::Resources::Blocklist.new(client: self)
      @refunds = Dodopayments::Resources::Refunds.new(client: self)
      @disputes = Dodopayments::Resources::Disputes.new(client: self)
      @payouts = Dodopayments::Resources::Payouts.new(client: self)
      @products = Dodopayments::Resources::Products.new(client: self)
      @misc = Dodopayments::Resources::Misc.new(client: self)
      @discounts = Dodopayments::Resources::Discounts.new(client: self)
      @addons = Dodopayments::Resources::Addons.new(client: self)
      @brands = Dodopayments::Resources::Brands.new(client: self)
      @webhooks = Dodopayments::Resources::Webhooks.new(client: self)
      @webhook_events = Dodopayments::Resources::WebhookEvents.new(client: self)
      @usage_events = Dodopayments::Resources::UsageEvents.new(client: self)
      @meters = Dodopayments::Resources::Meters.new(client: self)
      @balances = Dodopayments::Resources::Balances.new(client: self)
      @credit_entitlements = Dodopayments::Resources::CreditEntitlements.new(client: self)
      @entitlements = Dodopayments::Resources::Entitlements.new(client: self)
      @product_collections = Dodopayments::Resources::ProductCollections.new(client: self)
      @moderation = Dodopayments::Resources::Moderation.new(client: self)

      @workload_identity = nil
      return if workload_identity.nil?
      @workload_identity = Dodopayments::WorkloadIdentity::Session.new(
        config: workload_identity,
        context: Dodopayments::WorkloadIdentity::Context.new(
          base_url: @base_url,
          audience: Dodopayments::Internal::Util.uri_origin(@base_url)
        ),
        transport: method(:workload_identity_request)
      )
    end
  end
end

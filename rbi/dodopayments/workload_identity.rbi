# typed: strong

# typed: strong

module Dodopayments
  # Workload identity federation: exchange a short-lived OIDC token (JWT) from
  # your platform for a short-lived API access token.
  module WorkloadIdentity
    GRANT_TYPE = T.let(T.unsafe(nil), String)

    SUBJECT_TOKEN_TYPE = T.let(T.unsafe(nil), String)

    # The client refreshes the access token when this many seconds or less remain.
    REFRESH_WINDOW_IN_SECONDS = T.let(T.unsafe(nil), Integer)

    PROVIDER_TIMEOUT_IN_SECONDS = T.let(T.unsafe(nil), Integer)

    KUBERNETES_TOKEN_PATH = T.let(T.unsafe(nil), String)

    GCP_METADATA_URL = T.let(T.unsafe(nil), String)

    VERCEL_TOKEN_URL = T.let(T.unsafe(nil), String)

    # The values that a subject token provider gets on each token exchange.
    class Context
      # The base URL of the client.
      sig { returns(URI::Generic) }
      attr_reader :base_url

      # The default audience: the origin of the client base URL.
      sig { returns(String) }
      attr_reader :audience

      # @api private
      sig do
        params(base_url: URI::Generic, audience: String).returns(
          T.attached_class
        )
      end
      def self.new(base_url:, audience:)
      end
    end

    # The `workload_identity` option of the client.
    class Config
      sig { returns(String) }
      attr_reader :identity_provider_id

      sig { returns(T.anything) }
      attr_reader :provider

      sig do
        params(
          provider: T.anything,
          identity_provider_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the subject token (a JWT string). It can take one argument, a
        # `WorkloadIdentity::Context`.
        provider:,
        # Defaults to `ENV["DODO_PAYMENTS_IDENTITY_PROVIDER_ID"]`
        identity_provider_id: ENV["DODO_PAYMENTS_IDENTITY_PROVIDER_ID"]
      )
      end

      # @api private
      sig do
        params(
          value:
            T.any(
              Dodopayments::WorkloadIdentity::Config,
              T::Hash[Symbol, T.anything]
            )
        ).returns(Dodopayments::WorkloadIdentity::Config)
      end
      def self.coerce(value)
      end

      sig { returns(String) }
      def inspect
      end
    end

    # Caches the access token of one client. All methods are thread-safe.
    class Session
      sig { returns(String) }
      attr_reader :identity_provider_id

      # @api private
      sig do
        params(
          config: Dodopayments::WorkloadIdentity::Config,
          context: Dodopayments::WorkloadIdentity::Context,
          transport: T.anything
        ).returns(T.attached_class)
      end
      def self.new(config:, context:, transport:)
      end

      # Returns a valid access token. This method does a token exchange if no token is
      # cached, or if 5 minutes or less remain. Concurrent callers share one exchange.
      sig { returns(String) }
      def access_token
      end

      # @api private
      sig { params(token: T.nilable(String)).returns(NilClass) }
      def invalidate(token = nil)
      end

      # Revokes the cached access token and clears the cache. Does nothing if no token
      # is cached.
      sig { returns(NilClass) }
      def revoke
      end

      sig { returns(String) }
      def inspect
      end
    end

    Provider =
      T.type_alias do
        T
          .proc
          .params(context: Dodopayments::WorkloadIdentity::Context)
          .returns(String)
      end

    class << self
      # GitHub Actions. The job must have the `id-token: write` permission.
      sig do
        params(audience: T.nilable(String)).returns(
          Dodopayments::WorkloadIdentity::Provider
        )
      end
      def github_actions(
        # Defaults to the origin of the client base URL.
        audience: nil
      )
      end

      # GitLab CI/CD. Declare the token in `id_tokens` of the job.
      sig do
        params(env_var: String).returns(
          Dodopayments::WorkloadIdentity::Provider
        )
      end
      def gitlab(env_var: "DODO_PAYMENTS_ID_TOKEN")
      end

      # HCP Terraform (Terraform Cloud) dynamic credentials.
      sig { returns(Dodopayments::WorkloadIdentity::Provider) }
      def terraform_cloud
      end

      # Google Cloud: the metadata server of the attached service account.
      sig do
        params(audience: T.nilable(String)).returns(
          Dodopayments::WorkloadIdentity::Provider
        )
      end
      def gcp(
        # Defaults to the origin of the client base URL.
        audience: nil
      )
      end

      # Vercel: gets a Vercel OIDC token for the Dodo Payments audience on each
      # exchange.
      sig do
        params(audience: T.nilable(String)).returns(
          Dodopayments::WorkloadIdentity::Provider
        )
      end
      def vercel(
        # Defaults to the origin of the client base URL.
        audience: nil
      )
      end

      # Kubernetes: a projected service account token. The file is read on each
      # exchange.
      sig do
        params(path: String).returns(Dodopayments::WorkloadIdentity::Provider)
      end
      def kubernetes(path: KUBERNETES_TOKEN_PATH)
      end

      # A token file. The file is read on each exchange.
      sig do
        params(path: T.nilable(String)).returns(
          Dodopayments::WorkloadIdentity::Provider
        )
      end
      def file(
        # Defaults to `ENV["DODO_PAYMENTS_IDENTITY_TOKEN_FILE"]`
        path: ENV["DODO_PAYMENTS_IDENTITY_TOKEN_FILE"]
      )
      end

      # AWS: wraps your function that returns the JWT, for example from STS
      # `GetWebIdentityToken`.
      sig do
        params(
          fn: T.nilable(T.anything),
          blk: T.nilable(T.proc.returns(String))
        ).returns(Dodopayments::WorkloadIdentity::Provider)
      end
      def aws(fn = nil, &blk)
      end

      # A fixed token. Use it for tests.
      sig do
        params(token: String).returns(Dodopayments::WorkloadIdentity::Provider)
      end
      def static(token)
      end

      # Finds a token source in the environment, in this order: GitHub Actions, HCP
      # Terraform, `ENV["DODO_PAYMENTS_IDENTITY_TOKEN_FILE"]`, and the Kubernetes path.
      # Returns `nil` if no source is found.
      sig { returns(T.nilable(Dodopayments::WorkloadIdentity::Provider)) }
      def auto
      end
    end
  end
end

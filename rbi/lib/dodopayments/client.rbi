# typed: strong

module Dodopayments
  class Client < Dodopayments::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {live_mode: "https://live.dodopayments.com", test_mode: "https://test.dodopayments.com"},
        T::Hash[Symbol, String]
      )

    # Bearer Token for API authentication
    sig { returns(String) }
    def bearer_token
    end

    sig { returns(Dodopayments::Resources::Payments) }
    def payments
    end

    sig { returns(Dodopayments::Resources::Subscriptions) }
    def subscriptions
    end

    sig { returns(Dodopayments::Resources::Invoices) }
    def invoices
    end

    sig { returns(Dodopayments::Resources::Licenses) }
    def licenses
    end

    sig { returns(Dodopayments::Resources::LicenseKeys) }
    def license_keys
    end

    sig { returns(Dodopayments::Resources::LicenseKeyInstances) }
    def license_key_instances
    end

    sig { returns(Dodopayments::Resources::Customers) }
    def customers
    end

    sig { returns(Dodopayments::Resources::Refunds) }
    def refunds
    end

    sig { returns(Dodopayments::Resources::Disputes) }
    def disputes
    end

    sig { returns(Dodopayments::Resources::Payouts) }
    def payouts
    end

    sig { returns(Dodopayments::Resources::WebhookEvents) }
    def webhook_events
    end

    sig { returns(Dodopayments::Resources::Products) }
    def products
    end

    sig { returns(Dodopayments::Resources::Misc) }
    def misc
    end

    sig { returns(Dodopayments::Resources::Discounts) }
    def discounts
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers; end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        bearer_token: T.nilable(String),
        environment: NilClass,
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Bearer Token for API authentication Defaults to `ENV["DODO_PAYMENTS_API_KEY"]`
      bearer_token: ENV["DODO_PAYMENTS_API_KEY"],
      # Specifies the environment to use for the API.
      #
      # Each environment maps to a different base URL:
      #
      # - `live_mode` corresponds to `https://live.dodopayments.com`
      # - `test_mode` corresponds to `https://test.dodopayments.com`
      environment: nil,
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    ); end
  end
end

# typed: strong

module Dodopayments
  class Client < Dodopayments::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {
          live_mode: "https://live.dodopayments.com",
          test_mode: "https://test.dodopayments.com"
        },
        T::Hash[Symbol, String]
      )

    # Bearer Token for API authentication
    sig { returns(String) }
    attr_reader :bearer_token

    sig { returns(Dodopayments::Resources::CheckoutSessions) }
    attr_reader :checkout_sessions

    sig { returns(Dodopayments::Resources::Payments) }
    attr_reader :payments

    sig { returns(Dodopayments::Resources::Subscriptions) }
    attr_reader :subscriptions

    sig { returns(Dodopayments::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(Dodopayments::Resources::Licenses) }
    attr_reader :licenses

    sig { returns(Dodopayments::Resources::LicenseKeys) }
    attr_reader :license_keys

    sig { returns(Dodopayments::Resources::LicenseKeyInstances) }
    attr_reader :license_key_instances

    sig { returns(Dodopayments::Resources::Customers) }
    attr_reader :customers

    sig { returns(Dodopayments::Resources::Refunds) }
    attr_reader :refunds

    sig { returns(Dodopayments::Resources::Disputes) }
    attr_reader :disputes

    sig { returns(Dodopayments::Resources::Payouts) }
    attr_reader :payouts

    sig { returns(Dodopayments::Resources::WebhookEvents) }
    attr_reader :webhook_events

    sig { returns(Dodopayments::Resources::Products) }
    attr_reader :products

    sig { returns(Dodopayments::Resources::Misc) }
    attr_reader :misc

    sig { returns(Dodopayments::Resources::Discounts) }
    attr_reader :discounts

    sig { returns(Dodopayments::Resources::Addons) }
    attr_reader :addons

    sig { returns(Dodopayments::Resources::Brands) }
    attr_reader :brands

    sig { returns(Dodopayments::Resources::Webhooks) }
    attr_reader :webhooks

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        bearer_token: T.nilable(String),
        environment: T.nilable(T.any(Symbol, String)),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
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
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["DODO_PAYMENTS_BASE_URL"]`
      base_url: ENV["DODO_PAYMENTS_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Dodopayments::Client::DEFAULT_MAX_RETRIES,
      timeout: Dodopayments::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Dodopayments::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Dodopayments::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end

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
    # @return [String]
    attr_reader :bearer_token

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

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @bearer_token.nil?

      {"authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param bearer_token [String, nil] Bearer Token for API authentication Defaults to `ENV["DODO_PAYMENTS_API_KEY"]`
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
      bearer_token: ENV["DODO_PAYMENTS_API_KEY"],
      environment: nil,
      base_url: ENV["DODO_PAYMENTS_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= Dodopayments::Client::ENVIRONMENTS.fetch(environment&.to_sym || :production) do
        message = "environment must be one of #{Dodopayments::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      if bearer_token.nil?
        raise ArgumentError.new("bearer_token is required, and can be set via environ: \"DODO_PAYMENTS_API_KEY\"")
      end

      @bearer_token = bearer_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @checkout_sessions = Dodopayments::Resources::CheckoutSessions.new(client: self)
      @payments = Dodopayments::Resources::Payments.new(client: self)
      @subscriptions = Dodopayments::Resources::Subscriptions.new(client: self)
      @invoices = Dodopayments::Resources::Invoices.new(client: self)
      @licenses = Dodopayments::Resources::Licenses.new(client: self)
      @license_keys = Dodopayments::Resources::LicenseKeys.new(client: self)
      @license_key_instances = Dodopayments::Resources::LicenseKeyInstances.new(client: self)
      @customers = Dodopayments::Resources::Customers.new(client: self)
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
    end
  end
end

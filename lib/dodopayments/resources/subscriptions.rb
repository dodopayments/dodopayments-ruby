# frozen_string_literal: true

module Dodopayments
  module Resources
    class Subscriptions
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::SubscriptionCreateParams} for more details.
      #
      # @overload create(billing:, customer:, product_id:, quantity:, addons: nil, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, force_3ds: nil, metadata: nil, on_demand: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, trial_period_days: nil, request_options: {})
      #
      # @param billing [Dodopayments::Models::BillingAddress] Billing address information for the subscription
      #
      # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer] Customer details for the subscription
      #
      # @param product_id [String] Unique identifier of the product to subscribe to
      #
      # @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      # @param addons [Array<Dodopayments::Models::AttachAddon>, nil] Attach addons to this subscription
      #
      # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] List of payment methods allowed during checkout.
      #
      # @param billing_currency [Symbol, Dodopayments::Models::Currency, nil] Fix the currency in which the end customer is billed.
      #
      # @param discount_code [String, nil] Discount Code to apply to the subscription
      #
      # @param force_3ds [Boolean, nil] Override merchant default 3DS behaviour for this subscription
      #
      # @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
      #
      # @param on_demand [Dodopayments::Models::OnDemandSubscription, nil]
      #
      # @param payment_link [Boolean, nil] If true, generates a payment link.
      #
      # @param return_url [String, nil] Optional URL to redirect after successful subscription creation
      #
      # @param show_saved_payment_methods [Boolean] Display saved payment methods of a returning customer
      #
      # @param tax_id [String, nil] Tax ID in case the payment is B2B. If tax id validation fails the payment creati
      #
      # @param trial_period_days [Integer, nil] Optional trial period in days
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::SubscriptionCreateResponse]
      #
      # @see Dodopayments::Models::SubscriptionCreateParams
      def create(params)
        parsed, options = Dodopayments::SubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions",
          body: parsed,
          model: Dodopayments::Models::SubscriptionCreateResponse,
          options: options
        )
      end

      # @overload retrieve(subscription_id, request_options: {})
      #
      # @param subscription_id [String] Subscription Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Subscription]
      #
      # @see Dodopayments::Models::SubscriptionRetrieveParams
      def retrieve(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s", subscription_id],
          model: Dodopayments::Subscription,
          options: params[:request_options]
        )
      end

      # @overload update(subscription_id, billing: nil, cancel_at_next_billing_date: nil, disable_on_demand: nil, metadata: nil, next_billing_date: nil, status: nil, tax_id: nil, request_options: {})
      #
      # @param subscription_id [String] Subscription Id
      #
      # @param billing [Dodopayments::Models::BillingAddress, nil]
      #
      # @param cancel_at_next_billing_date [Boolean, nil] When set, the subscription will remain active until the end of billing period
      #
      # @param disable_on_demand [Dodopayments::Models::SubscriptionUpdateParams::DisableOnDemand, nil]
      #
      # @param metadata [Hash{Symbol=>String}, nil]
      #
      # @param next_billing_date [Time, nil]
      #
      # @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      #
      # @param tax_id [String, nil]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Subscription]
      #
      # @see Dodopayments::Models::SubscriptionUpdateParams
      def update(subscription_id, params = {})
        parsed, options = Dodopayments::SubscriptionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["subscriptions/%1$s", subscription_id],
          body: parsed,
          model: Dodopayments::Subscription,
          options: options
        )
      end

      # @overload list(brand_id: nil, created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #
      # @param brand_id [String] filter by Brand id
      #
      # @param created_at_gte [Time] Get events after this created time
      #
      # @param created_at_lte [Time] Get events created before this time
      #
      # @param customer_id [String] Filter by customer id
      #
      # @param page_number [Integer] Page number default is 0
      #
      # @param page_size [Integer] Page size default is 10 max is 100
      #
      # @param status [Symbol, Dodopayments::Models::SubscriptionListParams::Status] Filter by status
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::SubscriptionListResponse>]
      #
      # @see Dodopayments::Models::SubscriptionListParams
      def list(params = {})
        parsed, options = Dodopayments::SubscriptionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "subscriptions",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::SubscriptionListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::SubscriptionChangePlanParams} for more details.
      #
      # @overload change_plan(subscription_id, product_id:, proration_billing_mode:, quantity:, addons: nil, request_options: {})
      #
      # @param subscription_id [String] Subscription Id
      #
      # @param product_id [String] Unique identifier of the product to subscribe to
      #
      # @param proration_billing_mode [Symbol, Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode] Proration Billing Mode
      #
      # @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      # @param addons [Array<Dodopayments::Models::AttachAddon>, nil] Addons for the new plan.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::SubscriptionChangePlanParams
      def change_plan(subscription_id, params)
        parsed, options = Dodopayments::SubscriptionChangePlanParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/change-plan", subscription_id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::SubscriptionChargeParams} for more details.
      #
      # @overload charge(subscription_id, product_price:, adaptive_currency_fees_inclusive: nil, customer_balance_config: nil, metadata: nil, product_currency: nil, product_description: nil, request_options: {})
      #
      # @param subscription_id [String] Subscription Id
      #
      # @param product_price [Integer] The product price. Represented in the lowest denomination of the currency (e.g.,
      #
      # @param adaptive_currency_fees_inclusive [Boolean, nil] Whether adaptive currency fees should be included in the product_price (true) or
      #
      # @param customer_balance_config [Dodopayments::Models::SubscriptionChargeParams::CustomerBalanceConfig, nil] Specify how customer balance is used for the payment
      #
      # @param metadata [Hash{Symbol=>String}, nil] Metadata for the payment. If not passed, the metadata of the subscription will b
      #
      # @param product_currency [Symbol, Dodopayments::Models::Currency, nil] Optional currency of the product price. If not specified, defaults to the curren
      #
      # @param product_description [String, nil] Optional product description override for billing and line items.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::SubscriptionChargeResponse]
      #
      # @see Dodopayments::Models::SubscriptionChargeParams
      def charge(subscription_id, params)
        parsed, options = Dodopayments::SubscriptionChargeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/charge", subscription_id],
          body: parsed,
          model: Dodopayments::Models::SubscriptionChargeResponse,
          options: options
        )
      end

      # Get detailed usage history for a subscription that includes usage-based billing
      # (metered components). This endpoint provides insights into customer usage
      # patterns and billing calculations over time.
      #
      # ## What You'll Get:
      #
      # - **Billing periods**: Each item represents a billing cycle with start and end
      #   dates
      # - **Meter usage**: Detailed breakdown of usage for each meter configured on the
      #   subscription
      # - **Usage calculations**: Total units consumed, free threshold units, and
      #   chargeable units
      # - **Historical tracking**: Complete audit trail of usage-based charges
      #
      # ## Use Cases:
      #
      # - **Customer support**: Investigate billing questions and usage discrepancies
      # - **Usage analytics**: Analyze customer consumption patterns over time
      # - **Billing transparency**: Provide customers with detailed usage breakdowns
      # - **Revenue optimization**: Identify usage trends to optimize pricing strategies
      #
      # ## Filtering Options:
      #
      # - **Date range filtering**: Get usage history for specific time periods
      # - **Meter-specific filtering**: Focus on usage for a particular meter
      # - **Pagination**: Navigate through large usage histories efficiently
      #
      # ## Important Notes:
      #
      # - Only returns data for subscriptions with usage-based (metered) components
      # - Usage history is organized by billing periods (subscription cycles)
      # - Free threshold units are calculated and displayed separately from chargeable
      #   units
      # - Historical data is preserved even if meter configurations change
      #
      # ## Example Query Patterns:
      #
      # - Get last 3 months:
      #   `?start_date=2024-01-01T00:00:00Z&end_date=2024-03-31T23:59:59Z`
      # - Filter by meter: `?meter_id=mtr_api_requests`
      # - Paginate results: `?page_size=20&page_number=1`
      # - Recent usage: `?start_date=2024-03-01T00:00:00Z` (from March 1st to now)
      #
      # @overload retrieve_usage_history(subscription_id, end_date: nil, meter_id: nil, page_number: nil, page_size: nil, start_date: nil, request_options: {})
      #
      # @param subscription_id [String] Unique subscription identifier
      #
      # @param end_date [Time, nil] Filter by end date (inclusive)
      #
      # @param meter_id [String, nil] Filter by specific meter ID
      #
      # @param page_number [Integer, nil] Page number (default: 0)
      #
      # @param page_size [Integer, nil] Page size (default: 10, max: 100)
      #
      # @param start_date [Time, nil] Filter by start date (inclusive)
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse>]
      #
      # @see Dodopayments::Models::SubscriptionRetrieveUsageHistoryParams
      def retrieve_usage_history(subscription_id, params = {})
        parsed, options = Dodopayments::SubscriptionRetrieveUsageHistoryParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s/usage-history", subscription_id],
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

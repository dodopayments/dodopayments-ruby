# frozen_string_literal: true

module Dodopayments
  module Resources
    class Subscriptions
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::SubscriptionCreateParams} for more details.
      #
      # @overload create(billing:, customer:, product_id:, quantity:, addons: nil, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, metadata: nil, on_demand: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, trial_period_days: nil, request_options: {})
      #
      # @param billing [Dodopayments::Models::BillingAddress]
      #
      # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      #
      # @param product_id [String] Unique identifier of the product to subscribe to
      #
      # @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      # @param addons [Array<Dodopayments::Models::SubscriptionCreateParams::Addon>, nil] Attach addons to this subscription
      #
      # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType>, nil] List of payment methods allowed during checkout.
      #
      # @param billing_currency [Symbol, Dodopayments::Models::Currency, nil]
      #
      # @param discount_code [String, nil] Discount Code to apply to the subscription
      #
      # @param metadata [Hash{Symbol=>String}]
      #
      # @param on_demand [Dodopayments::Models::SubscriptionCreateParams::OnDemand, nil]
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

      # @overload update(subscription_id, billing: nil, disable_on_demand: nil, metadata: nil, status: nil, tax_id: nil, request_options: {})
      #
      # @param subscription_id [String] Subscription Id
      #
      # @param billing [Dodopayments::Models::BillingAddress, nil]
      #
      # @param disable_on_demand [Dodopayments::Models::SubscriptionUpdateParams::DisableOnDemand, nil]
      #
      # @param metadata [Hash{Symbol=>String}, nil]
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

      # @overload list(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #
      # @param created_at_gte [Time, nil] Get events after this created time
      #
      # @param created_at_lte [Time, nil] Get events created before this time
      #
      # @param customer_id [String, nil] Filter by customer id
      #
      # @param page_number [Integer, nil] Page number default is 0
      #
      # @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      # @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil] Filter by status
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
      # @param proration_billing_mode [Symbol, Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode]
      #
      # @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      # @param addons [Array<Dodopayments::Models::SubscriptionChangePlanParams::Addon>, nil] Addons for the new plan.
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
      # @overload charge(subscription_id, product_price:, metadata: nil, request_options: {})
      #
      # @param subscription_id [String] Subscription Id
      #
      # @param product_price [Integer] The product price. Represented in the lowest denomination of the currency (e.g.,
      #
      # @param metadata [Hash{Symbol=>String}, nil]
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

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

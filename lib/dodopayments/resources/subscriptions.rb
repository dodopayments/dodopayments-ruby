# frozen_string_literal: true

module Dodopayments
  module Resources
    class Subscriptions
      # @overload create(billing:, customer:, product_id:, quantity:, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, metadata: nil, on_demand: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, trial_period_days: nil, request_options: {})
      #
      # @param billing [Dodopayments::Models::BillingAddress]
      # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      # @param product_id [String]
      # @param quantity [Integer]
      # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType>, nil]
      # @param billing_currency [Symbol, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency, nil]
      # @param discount_code [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param on_demand [Dodopayments::Models::SubscriptionCreateParams::OnDemand, nil]
      # @param payment_link [Boolean, nil]
      # @param return_url [String, nil]
      # @param show_saved_payment_methods [Boolean]
      # @param tax_id [String, nil]
      # @param trial_period_days [Integer, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::SubscriptionCreateResponse]
      #
      # @see Dodopayments::Models::SubscriptionCreateParams
      def create(params)
        parsed, options = Dodopayments::Models::SubscriptionCreateParams.dump_request(params)
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
      # @param subscription_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Subscription]
      #
      # @see Dodopayments::Models::SubscriptionRetrieveParams
      def retrieve(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s", subscription_id],
          model: Dodopayments::Models::Subscription,
          options: params[:request_options]
        )
      end

      # @overload update(subscription_id, billing: nil, metadata: nil, status: nil, tax_id: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param billing [Dodopayments::Models::BillingAddress, nil]
      # @param metadata [Hash{Symbol=>String}, nil]
      # @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      # @param tax_id [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Subscription]
      #
      # @see Dodopayments::Models::SubscriptionUpdateParams
      def update(subscription_id, params = {})
        parsed, options = Dodopayments::Models::SubscriptionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["subscriptions/%1$s", subscription_id],
          body: parsed,
          model: Dodopayments::Models::Subscription,
          options: options
        )
      end

      # @overload list(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #
      # @param created_at_gte [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param customer_id [String, nil]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Subscription>]
      #
      # @see Dodopayments::Models::SubscriptionListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::SubscriptionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "subscriptions",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::Subscription,
          options: options
        )
      end

      # @overload change_plan(subscription_id, product_id:, proration_billing_mode:, quantity:, request_options: {})
      #
      # @param subscription_id [String]
      # @param product_id [String]
      # @param proration_billing_mode [Symbol, Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode]
      # @param quantity [Integer]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::SubscriptionChangePlanParams
      def change_plan(subscription_id, params)
        parsed, options = Dodopayments::Models::SubscriptionChangePlanParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/change-plan", subscription_id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @overload charge(subscription_id, product_price:, request_options: {})
      #
      # @param subscription_id [String]
      # @param product_price [Integer]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::SubscriptionChargeResponse]
      #
      # @see Dodopayments::Models::SubscriptionChargeParams
      def charge(subscription_id, params)
        parsed, options = Dodopayments::Models::SubscriptionChargeParams.dump_request(params)
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

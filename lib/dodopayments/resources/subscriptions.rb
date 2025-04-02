# frozen_string_literal: true

module Dodopayments
  module Resources
    class Subscriptions
      # @param params [Dodopayments::Models::SubscriptionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::Models::BillingAddress] :billing
      #
      #   @option params [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer] :customer
      #
      #   @option params [String] :product_id Unique identifier of the product to subscribe to
      #
      #   @option params [Integer] :quantity Number of units to subscribe for. Must be at least 1.
      #
      #   @option params [Array<Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType>, nil] :allowed_payment_method_types List of payment methods allowed during checkout.
      #
      #     Customers will **never** see payment methods that are **not** in this list.
      #     However, adding a method here **does not guarantee** customers will see it.
      #     Availability still depends on other factors (e.g., customer location, merchant
      #     settings).
      #
      #   @option params [Symbol, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency, nil] :billing_currency
      #
      #   @option params [String, nil] :discount_code Discount Code to apply to the subscription
      #
      #   @option params [Hash{Symbol=>String}] :metadata
      #
      #   @option params [Dodopayments::Models::SubscriptionCreateParams::OnDemand, nil] :on_demand
      #
      #   @option params [Boolean, nil] :payment_link If true, generates a payment link. Defaults to false if not specified.
      #
      #   @option params [String, nil] :return_url Optional URL to redirect after successful subscription creation
      #
      #   @option params [Boolean] :show_saved_payment_methods Display saved payment methods of a returning customer False by default
      #
      #   @option params [String, nil] :tax_id Tax ID in case the payment is B2B. If tax id validation fails the payment
      #     creation will fail
      #
      #   @option params [Integer, nil] :trial_period_days Optional trial period in days If specified, this value overrides the trial
      #     period set in the product's price Must be between 0 and 10000 days
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::SubscriptionCreateResponse]
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

      # @param subscription_id [String] Subscription Id
      #
      # @param params [Dodopayments::Models::SubscriptionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Subscription]
      def retrieve(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s", subscription_id],
          model: Dodopayments::Models::Subscription,
          options: params[:request_options]
        )
      end

      # @param subscription_id [String] Subscription Id
      #
      # @param params [Dodopayments::Models::SubscriptionUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>String}, nil] :metadata
      #
      #   @option params [Symbol, Dodopayments::Models::SubscriptionStatus, nil] :status
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Subscription]
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

      # @param params [Dodopayments::Models::SubscriptionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time, nil] :created_at_gte Get events after this created time
      #
      #   @option params [Time, nil] :created_at_lte Get events created before this time
      #
      #   @option params [String, nil] :customer_id Filter by customer id
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [Symbol, Dodopayments::Models::SubscriptionStatus, nil] :status Filter by status
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::Subscription>]
      def list(params = {})
        parsed, options = Dodopayments::Models::SubscriptionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "subscriptions",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
          model: Dodopayments::Models::Subscription,
          options: options
        )
      end

      # @param subscription_id [String] Subscription Id
      #
      # @param params [Dodopayments::Models::SubscriptionChargeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :product_price The product price. Represented in the lowest denomination of the currency (e.g.,
      #     cents for USD). For example, to charge $1.00, pass `100`.
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::SubscriptionChargeResponse]
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

      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

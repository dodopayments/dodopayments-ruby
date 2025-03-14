# frozen_string_literal: true

module DodoPayments
  module Resources
    class Subscriptions
      # @param params [DodoPayments::Models::SubscriptionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::Models::SubscriptionCreateParams::Billing] :billing
      #
      #   @option params [DodoPayments::Models::SubscriptionCreateParams::Customer::AttachExistingCustomer, DodoPayments::Models::SubscriptionCreateParams::Customer::CreateNewCustomer] :customer
      #
      #   @option params [String] :product_id Unique identifier of the product to subscribe to
      #
      #   @option params [Integer] :quantity Number of units to subscribe for. Must be at least 1.
      #
      #   @option params [String, nil] :discount_code Discount Code to apply to the subscription
      #
      #   @option params [Hash{Symbol=>String}] :metadata
      #
      #   @option params [Boolean, nil] :payment_link If true, generates a payment link. Defaults to false if not specified.
      #
      #   @option params [String, nil] :return_url Optional URL to redirect after successful subscription creation
      #
      #   @option params [String, nil] :tax_id Tax ID in case the payment is B2B. If tax id validation fails the payment
      #     creation will fail
      #
      #   @option params [Integer, nil] :trial_period_days Optional trial period in days If specified, this value overrides the trial
      #     period set in the product's price Must be between 0 and 10000 days
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::SubscriptionCreateResponse]
      def create(params)
        parsed, options = DodoPayments::Models::SubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions",
          body: parsed,
          model: DodoPayments::Models::SubscriptionCreateResponse,
          options: options
        )
      end

      # @param subscription_id [String] Subscription Id
      #
      # @param params [DodoPayments::Models::SubscriptionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Subscription]
      def retrieve(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["subscriptions/%0s", subscription_id],
          model: DodoPayments::Models::Subscription,
          options: params[:request_options]
        )
      end

      # @param subscription_id [String] Subscription Id
      #
      # @param params [DodoPayments::Models::SubscriptionUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>String}, nil] :metadata
      #
      #   @option params [Symbol, DodoPayments::Models::SubscriptionUpdateParams::Status, nil] :status
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Subscription]
      def update(subscription_id, params = {})
        parsed, options = DodoPayments::Models::SubscriptionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["subscriptions/%0s", subscription_id],
          body: parsed,
          model: DodoPayments::Models::Subscription,
          options: options
        )
      end

      # @param params [DodoPayments::Models::SubscriptionListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Symbol, DodoPayments::Models::SubscriptionListParams::Status, nil] :status Filter by status
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::Subscription>]
      def list(params = {})
        parsed, options = DodoPayments::Models::SubscriptionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "subscriptions",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::Subscription,
          options: options
        )
      end

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

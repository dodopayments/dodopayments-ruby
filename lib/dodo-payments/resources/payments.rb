# frozen_string_literal: true

module DodoPayments
  module Resources
    class Payments
      # @param params [DodoPayments::Models::PaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::Models::PaymentCreateParams::Billing] :billing
      #
      #   @option params [DodoPayments::Models::PaymentCreateParams::Customer::AttachExistingCustomer, DodoPayments::Models::PaymentCreateParams::Customer::CreateNewCustomer] :customer
      #
      #   @option params [Array<DodoPayments::Models::PaymentCreateParams::ProductCart>] :product_cart List of products in the cart. Must contain at least 1 and at most 100 items.
      #
      #   @option params [String, nil] :discount_code Discount Code to apply to the transaction
      #
      #   @option params [Hash{Symbol=>String}] :metadata
      #
      #   @option params [Boolean, nil] :payment_link Whether to generate a payment link. Defaults to false if not specified.
      #
      #   @option params [String, nil] :return_url Optional URL to redirect the customer after payment. Must be a valid URL if
      #     provided.
      #
      #   @option params [String, nil] :tax_id Tax ID in case the payment is B2B. If tax id validation fails the payment
      #     creation will fail
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::PaymentCreateResponse]
      def create(params)
        parsed, options = DodoPayments::Models::PaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments",
          body: parsed,
          model: DodoPayments::Models::PaymentCreateResponse,
          options: options
        )
      end

      # @param payment_id [String] Payment Id
      #
      # @param params [DodoPayments::Models::PaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Payment]
      def retrieve(payment_id, params = {})
        @client.request(
          method: :get,
          path: ["payments/%0s", payment_id],
          model: DodoPayments::Models::Payment,
          options: params[:request_options]
        )
      end

      # @param params [DodoPayments::Models::PaymentListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Symbol, DodoPayments::Models::PaymentListParams::Status, nil] :status Filter by status
      #
      #   @option params [String, nil] :subscription_id Filter by subscription id
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::PaymentListResponse>]
      def list(params = {})
        parsed, options = DodoPayments::Models::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payments",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::PaymentListResponse,
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

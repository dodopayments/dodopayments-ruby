# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payments
      # @param params [Dodopayments::Models::PaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::Models::BillingAddress] :billing
      #
      #   @option params [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer] :customer
      #
      #   @option params [Array<Dodopayments::Models::OneTimeProductCartItem>] :product_cart List of products in the cart. Must contain at least 1 and at most 100 items.
      #
      #   @option params [Array<Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType>, nil] :allowed_payment_method_types List of payment methods allowed during checkout.
      #
      #     Customers will **never** see payment methods that are **not** in this list.
      #     However, adding a method here **does not guarantee** customers will see it.
      #     Availability still depends on other factors (e.g., customer location, merchant
      #     settings).
      #
      #   @option params [Symbol, Dodopayments::Models::PaymentCreateParams::BillingCurrency, nil] :billing_currency
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
      #   @option params [Boolean] :show_saved_payment_methods Display saved payment methods of a returning customer False by default
      #
      #   @option params [String, nil] :tax_id Tax ID in case the payment is B2B. If tax id validation fails the payment
      #     creation will fail
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::PaymentCreateResponse]
      def create(params)
        parsed, options = Dodopayments::Models::PaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments",
          body: parsed,
          model: Dodopayments::Models::PaymentCreateResponse,
          options: options
        )
      end

      # @param payment_id [String] Payment Id
      #
      # @param params [Dodopayments::Models::PaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Payment]
      def retrieve(payment_id, params = {})
        @client.request(
          method: :get,
          path: ["payments/%0s", payment_id],
          model: Dodopayments::Models::Payment,
          options: params[:request_options]
        )
      end

      # @param params [Dodopayments::Models::PaymentListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Symbol, Dodopayments::Models::IntentStatus, nil] :status Filter by status
      #
      #   @option params [String, nil] :subscription_id Filter by subscription id
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::PaymentListResponse>]
      def list(params = {})
        parsed, options = Dodopayments::Models::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payments",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
          model: Dodopayments::Models::PaymentListResponse,
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

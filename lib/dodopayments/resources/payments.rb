# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payments
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::PaymentCreateParams} for more details.
      #
      # @overload create(billing:, customer:, product_cart:, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, force_3ds: nil, metadata: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, request_options: {})
      #
      # @param billing [Dodopayments::Models::BillingAddress] Billing address details for the payment
      #
      # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer] Customer information for the payment
      #
      # @param product_cart [Array<Dodopayments::Models::OneTimeProductCartItem>] List of products in the cart. Must contain at least 1 and at most 100 items.
      #
      # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] List of payment methods allowed during checkout.
      #
      # @param billing_currency [Symbol, Dodopayments::Models::Currency, nil] Fix the currency in which the end customer is billed.
      #
      # @param discount_code [String, nil] Discount Code to apply to the transaction
      #
      # @param force_3ds [Boolean, nil] Override merchant default 3DS behaviour for this payment
      #
      # @param metadata [Hash{Symbol=>String}] Additional metadata associated with the payment.
      #
      # @param payment_link [Boolean, nil] Whether to generate a payment link. Defaults to false if not specified.
      #
      # @param return_url [String, nil] Optional URL to redirect the customer after payment.
      #
      # @param show_saved_payment_methods [Boolean] Display saved payment methods of a returning customer
      #
      # @param tax_id [String, nil] Tax ID in case the payment is B2B. If tax id validation fails the payment creati
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::PaymentCreateResponse]
      #
      # @see Dodopayments::Models::PaymentCreateParams
      def create(params)
        parsed, options = Dodopayments::PaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments",
          body: parsed,
          model: Dodopayments::Models::PaymentCreateResponse,
          options: options
        )
      end

      # @overload retrieve(payment_id, request_options: {})
      #
      # @param payment_id [String] Payment Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Payment]
      #
      # @see Dodopayments::Models::PaymentRetrieveParams
      def retrieve(payment_id, params = {})
        @client.request(
          method: :get,
          path: ["payments/%1$s", payment_id],
          model: Dodopayments::Payment,
          options: params[:request_options]
        )
      end

      # @overload list(brand_id: nil, created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, subscription_id: nil, request_options: {})
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
      # @param status [Symbol, Dodopayments::Models::PaymentListParams::Status] Filter by status
      #
      # @param subscription_id [String] Filter by subscription id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::PaymentListResponse>]
      #
      # @see Dodopayments::Models::PaymentListParams
      def list(params = {})
        parsed, options = Dodopayments::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payments",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::PaymentListResponse,
          options: options
        )
      end

      # @overload retrieve_line_items(payment_id, request_options: {})
      #
      # @param payment_id [String] Payment Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::PaymentRetrieveLineItemsResponse]
      #
      # @see Dodopayments::Models::PaymentRetrieveLineItemsParams
      def retrieve_line_items(payment_id, params = {})
        @client.request(
          method: :get,
          path: ["payments/%1$s/line-items", payment_id],
          model: Dodopayments::Models::PaymentRetrieveLineItemsResponse,
          options: params[:request_options]
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

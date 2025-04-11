# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payments
      # @overload create(billing:, customer:, product_cart:, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, metadata: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, request_options: {})
      #
      # @param billing [Dodopayments::Models::BillingAddress]
      # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      # @param product_cart [Array<Dodopayments::Models::OneTimeProductCartItem>]
      # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType>, nil]
      # @param billing_currency [Symbol, Dodopayments::Models::PaymentCreateParams::BillingCurrency, nil]
      # @param discount_code [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param payment_link [Boolean, nil]
      # @param return_url [String, nil]
      # @param show_saved_payment_methods [Boolean]
      # @param tax_id [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::PaymentCreateResponse]
      #
      # @see Dodopayments::Models::PaymentCreateParams
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

      # @overload retrieve(payment_id, request_options: {})
      #
      # @param payment_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Payment]
      #
      # @see Dodopayments::Models::PaymentRetrieveParams
      def retrieve(payment_id, params = {})
        @client.request(
          method: :get,
          path: ["payments/%1$s", payment_id],
          model: Dodopayments::Models::Payment,
          options: params[:request_options]
        )
      end

      # @overload list(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, subscription_id: nil, request_options: {})
      #
      # @param created_at_gte [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param customer_id [String, nil]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param status [Symbol, Dodopayments::Models::IntentStatus, nil]
      # @param subscription_id [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::PaymentListResponse>]
      #
      # @see Dodopayments::Models::PaymentListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payments",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::PaymentListResponse,
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

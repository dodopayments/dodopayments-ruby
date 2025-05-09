# frozen_string_literal: true

module Dodopayments
  module Resources
    class Refunds
      # @overload create(payment_id:, reason: nil, request_options: {})
      #
      # @param payment_id [String] The unique identifier of the payment to be refunded.
      #
      # @param reason [String, nil] The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Refund]
      #
      # @see Dodopayments::Models::RefundCreateParams
      def create(params)
        parsed, options = Dodopayments::Models::RefundCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "refunds",
          body: parsed,
          model: Dodopayments::Models::Refund,
          options: options
        )
      end

      # @overload retrieve(refund_id, request_options: {})
      #
      # @param refund_id [String] Refund Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Refund]
      #
      # @see Dodopayments::Models::RefundRetrieveParams
      def retrieve(refund_id, params = {})
        @client.request(
          method: :get,
          path: ["refunds/%1$s", refund_id],
          model: Dodopayments::Models::Refund,
          options: params[:request_options]
        )
      end

      # @overload list(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #
      # @param created_at_gte [Time, nil] Get events after this created time
      #
      # @param created_at_lte [Time, nil] Get events created before this time
      #
      # @param customer_id [String, nil] Filter by customer_id
      #
      # @param page_number [Integer, nil] Page number default is 0
      #
      # @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      # @param status [Symbol, Dodopayments::Models::RefundStatus, nil] Filter by status
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Refund>]
      #
      # @see Dodopayments::Models::RefundListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::RefundListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "refunds",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::Refund,
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

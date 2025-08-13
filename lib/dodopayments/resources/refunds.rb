# frozen_string_literal: true

module Dodopayments
  module Resources
    class Refunds
      # @overload create(payment_id:, items: nil, reason: nil, request_options: {})
      #
      # @param payment_id [String] The unique identifier of the payment to be refunded.
      #
      # @param items [Array<Dodopayments::Models::RefundCreateParams::Item>, nil] Partially Refund an Individual Item
      #
      # @param reason [String, nil] The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Refund]
      #
      # @see Dodopayments::Models::RefundCreateParams
      def create(params)
        parsed, options = Dodopayments::RefundCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "refunds",
          body: parsed,
          model: Dodopayments::Refund,
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
          model: Dodopayments::Refund,
          options: params[:request_options]
        )
      end

      # @overload list(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #
      # @param created_at_gte [Time] Get events after this created time
      #
      # @param created_at_lte [Time] Get events created before this time
      #
      # @param customer_id [String] Filter by customer_id
      #
      # @param page_number [Integer] Page number default is 0
      #
      # @param page_size [Integer] Page size default is 10 max is 100
      #
      # @param status [Symbol, Dodopayments::Models::RefundListParams::Status] Filter by status
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Refund>]
      #
      # @see Dodopayments::Models::RefundListParams
      def list(params = {})
        parsed, options = Dodopayments::RefundListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "refunds",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Refund,
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

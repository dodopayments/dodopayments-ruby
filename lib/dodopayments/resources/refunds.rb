# frozen_string_literal: true

module Dodopayments
  module Resources
    class Refunds
      # @overload create(payment_id:, amount: nil, reason: nil, request_options: {})
      #
      # @param payment_id [String]
      # @param amount [Integer, nil]
      # @param reason [String, nil]
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
      # @param refund_id [String]
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
      # @param created_at_gte [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param customer_id [String, nil]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param status [Symbol, Dodopayments::Models::RefundStatus, nil]
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

# frozen_string_literal: true

module Dodopayments
  module Resources
    class Refunds
      # @param params [Dodopayments::Models::RefundCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :payment_id The unique identifier of the payment to be refunded.
      #
      #   @option params [Integer, nil] :amount The amount to be refunded. Must be non-negative. Optional. Partial refunds are
      #     currently disabled.
      #
      #   @option params [String, nil] :reason The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Refund]
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

      # @param refund_id [String] Refund Id
      #
      # @param params [Dodopayments::Models::RefundRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Refund]
      def retrieve(refund_id, params = {})
        @client.request(
          method: :get,
          path: ["refunds/%0s", refund_id],
          model: Dodopayments::Models::Refund,
          options: params[:request_options]
        )
      end

      # @param params [Dodopayments::Models::RefundListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time, nil] :created_at_gte Get events after this created time
      #
      #   @option params [Time, nil] :created_at_lte Get events created before this time
      #
      #   @option params [String, nil] :customer_id Filter by customer_id
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [Symbol, Dodopayments::Models::RefundStatus, nil] :status Filter by status
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::Refund>]
      def list(params = {})
        parsed, options = Dodopayments::Models::RefundListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "refunds",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
          model: Dodopayments::Models::Refund,
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

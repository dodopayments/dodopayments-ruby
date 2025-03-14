# frozen_string_literal: true

module DodoPayments
  module Resources
    class Refunds
      # @param params [DodoPayments::Models::RefundCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :payment_id The unique identifier of the payment to be refunded.
      #
      #   @option params [Integer, nil] :amount The amount to be refunded. Must be non-negative. Optional. Partial refunds are
      #     currently disabled.
      #
      #   @option params [String, nil] :reason The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Refund]
      def create(params)
        parsed, options = DodoPayments::Models::RefundCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "refunds",
          body: parsed,
          model: DodoPayments::Models::Refund,
          options: options
        )
      end

      # @param refund_id [String] Refund Id
      #
      # @param params [DodoPayments::Models::RefundRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Refund]
      def retrieve(refund_id, params = {})
        @client.request(
          method: :get,
          path: ["refunds/%0s", refund_id],
          model: DodoPayments::Models::Refund,
          options: params[:request_options]
        )
      end

      # @param params [DodoPayments::Models::RefundListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Symbol, DodoPayments::Models::RefundListParams::Status, nil] :status Filter by status
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::Refund>]
      def list(params = {})
        parsed, options = DodoPayments::Models::RefundListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "refunds",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::Refund,
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

# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payouts
      # @overload list(created_at_gte: nil, created_at_lte: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param created_at_gte [Time] Get payouts created after this time (inclusive)
      #
      # @param created_at_lte [Time] Get payouts created before this time (inclusive)
      #
      # @param page_number [Integer] Page number default is 0
      #
      # @param page_size [Integer] Page size default is 10 max is 100
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::PayoutListResponse>]
      #
      # @see Dodopayments::Models::PayoutListParams
      def list(params = {})
        parsed, options = Dodopayments::PayoutListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payouts",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::PayoutListResponse,
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

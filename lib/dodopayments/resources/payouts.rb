# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payouts
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::PayoutListResponse>]
      #
      # @see Dodopayments::Models::PayoutListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::PayoutListParams.dump_request(params)
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

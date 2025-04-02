# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payouts
      # @param params [Dodopayments::Models::PayoutListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::PayoutListResponse>]
      #
      # @see Dodopayments::Models::PayoutListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::PayoutListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payouts",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
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

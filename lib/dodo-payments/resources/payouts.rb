# frozen_string_literal: true

module DodoPayments
  module Resources
    class Payouts
      # @param params [DodoPayments::Models::PayoutListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::PayoutListResponse>]
      def list(params = {})
        parsed, options = DodoPayments::Models::PayoutListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payouts",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::PayoutListResponse,
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

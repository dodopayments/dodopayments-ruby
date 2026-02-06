# frozen_string_literal: true

module Dodopayments
  module Resources
    class Balances
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::BalanceRetrieveLedgerParams} for more details.
      #
      # @overload retrieve_ledger(created_at_gte: nil, created_at_lte: nil, currency: nil, event_type: nil, limit: nil, page_number: nil, page_size: nil, reference_object_id: nil, request_options: {})
      #
      # @param created_at_gte [Time] Get events after this created time
      #
      # @param created_at_lte [Time] Get events created before this time
      #
      # @param currency [Symbol, Dodopayments::Models::BalanceRetrieveLedgerParams::Currency] Filter by currency
      #
      # @param event_type [Symbol, Dodopayments::Models::BalanceRetrieveLedgerParams::EventType] Filter by Ledger Event Type
      #
      # @param limit [Integer] Min : 1, Max : 100, default 10
      #
      # @param page_number [Integer] Page number default is 0
      #
      # @param page_size [Integer] Page size default is 10 max is 100
      #
      # @param reference_object_id [String] Get events history of a specific object like payment/subscription/refund/dispute
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::BalanceLedgerEntry>]
      #
      # @see Dodopayments::Models::BalanceRetrieveLedgerParams
      def retrieve_ledger(params = {})
        parsed, options = Dodopayments::BalanceRetrieveLedgerParams.dump_request(params)
        @client.request(
          method: :get,
          path: "balances/ledger",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::BalanceLedgerEntry,
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

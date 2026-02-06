# typed: strong

module Dodopayments
  module Resources
    class Balances
      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          currency:
            Dodopayments::BalanceRetrieveLedgerParams::Currency::OrSymbol,
          event_type:
            Dodopayments::BalanceRetrieveLedgerParams::EventType::OrSymbol,
          limit: Integer,
          page_number: Integer,
          page_size: Integer,
          reference_object_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::BalanceLedgerEntry
          ]
        )
      end
      def retrieve_ledger(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by currency
        currency: nil,
        # Filter by Ledger Event Type
        event_type: nil,
        # Min : 1, Max : 100, default 10
        limit: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Get events history of a specific object like payment/subscription/refund/dispute
        reference_object_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

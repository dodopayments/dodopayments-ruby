# typed: strong

module Dodopayments
  module Resources
    class Disputes
      sig do
        params(
          dispute_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::GetDispute)
      end
      def retrieve(
        # Dispute Id
        dispute_id,
        request_options: {}
      )
      end

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          dispute_stage:
            Dodopayments::DisputeListParams::DisputeStage::OrSymbol,
          dispute_status:
            Dodopayments::DisputeListParams::DisputeStatus::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::DisputeListResponse
          ]
        )
      end
      def list(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by customer_id
        customer_id: nil,
        # Filter by dispute stage
        dispute_stage: nil,
        # Filter by dispute status
        dispute_status: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
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

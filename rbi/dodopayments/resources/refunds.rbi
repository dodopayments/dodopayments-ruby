# typed: strong

module Dodopayments
  module Resources
    class Refunds
      sig do
        params(
          payment_id: String,
          items:
            T.nilable(T::Array[Dodopayments::RefundCreateParams::Item::OrHash]),
          metadata: T::Hash[Symbol, String],
          reason: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Refund)
      end
      def create(
        # The unique identifier of the payment to be refunded.
        payment_id:,
        # Partially Refund an Individual Item
        items: nil,
        # Additional metadata associated with the refund.
        metadata: nil,
        # The reason for the refund, if any. Maximum length is 3000 characters. Optional.
        reason: nil,
        request_options: {}
      )
      end

      sig do
        params(
          refund_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Refund)
      end
      def retrieve(
        # Refund Id
        refund_id,
        request_options: {}
      )
      end

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          status: Dodopayments::RefundListParams::Status::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::RefundListResponse
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
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by status
        status: nil,
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

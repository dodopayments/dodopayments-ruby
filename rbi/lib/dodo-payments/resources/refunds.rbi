# typed: strong

module DodoPayments
  module Resources
    class Refunds
      sig do
        params(
          payment_id: String,
          amount: T.nilable(Integer),
          reason: T.nilable(String),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Refund)
      end
      def create(
        # The unique identifier of the payment to be refunded.
        payment_id:,
        # The amount to be refunded. Must be non-negative. Optional. Partial refunds are
        #   currently disabled.
        amount: nil,
        # The reason for the refund, if any. Maximum length is 3000 characters. Optional.
        reason: nil,
        request_options: {}
      )
      end

      sig do
        params(
          refund_id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Refund)
      end
      def retrieve(
        # Refund Id
        refund_id,
        request_options: {}
      )
      end

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Symbol),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::DefaultPageNumberPagination[DodoPayments::Models::Refund])
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

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

# typed: strong

module DodoPayments
  module Resources
    class Disputes
      sig do
        params(
          dispute_id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Dispute)
      end
      def retrieve(
        # Dispute Id
        dispute_id,
        request_options: {}
      )
      end

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          dispute_stage: T.nilable(Symbol),
          dispute_status: T.nilable(Symbol),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::DefaultPageNumberPagination[DodoPayments::Models::Dispute])
      end
      def list(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
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

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

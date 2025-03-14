# typed: strong

module DodoPayments
  module Resources
    class Payouts
      sig do
        params(
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::DefaultPageNumberPagination[DodoPayments::Models::PayoutListResponse])
      end
      def list(
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

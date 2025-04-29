# typed: strong

module Dodopayments
  module Resources
    class Payouts
      sig do
        params(
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: Dodopayments::RequestOpts
        )
          .returns(Dodopayments::Internal::DefaultPageNumberPagination[Dodopayments::Models::PayoutListResponse])
      end
      def list(
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end

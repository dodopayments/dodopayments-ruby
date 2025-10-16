# typed: strong

module Dodopayments
  module Resources
    class Payouts
      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::PayoutListResponse
          ]
        )
      end
      def list(
        # Get payouts created after this time (inclusive)
        created_at_gte: nil,
        # Get payouts created before this time (inclusive)
        created_at_lte: nil,
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

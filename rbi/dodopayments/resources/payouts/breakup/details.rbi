# typed: strong

module Dodopayments
  module Resources
    class Payouts
      class Breakup
        class Details
          # Returns paginated individual balance ledger entries for a payout, with each
          # entry's amount pro-rated into the payout's currency. Supports pagination via
          # `page_size` (default 10, max 100) and `page_number` (default 0) query
          # parameters.
          sig do
            params(
              payout_id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(
              Dodopayments::Internal::DefaultPageNumberPagination[
                Dodopayments::Models::Payouts::Breakup::DetailListResponse
              ]
            )
          end
          def list(
            # Id of the Payout to get breakup for
            payout_id,
            # Page number (0-indexed). Default: 0.
            page_number: nil,
            # Number of items per page. Default: 10, Max: 100.
            page_size: nil,
            request_options: {}
          )
          end

          # Downloads the complete payout breakup as a CSV file. Each row represents a
          # balance ledger entry with columns: Ledger ID, Event Type, Original Amount,
          # Original Currency, Reference Object ID, Description, Created At, USD Equivalent
          # Amount, and Payout Currency Amount.
          sig do
            params(
              payout_id: String,
              request_options: Dodopayments::RequestOptions::OrHash
            ).void
          end
          def download_csv(
            # Id of the Payout to get breakup for
            payout_id,
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
  end
end

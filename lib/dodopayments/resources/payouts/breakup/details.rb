# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payouts
      class Breakup
        class Details
          # Returns paginated individual balance ledger entries for a payout, with each
          # entry's amount pro-rated into the payout's currency. Supports pagination via
          # `page_size` (default 10, max 100) and `page_number` (default 0) query
          # parameters.
          #
          # @overload list(payout_id, page_number: nil, page_size: nil, request_options: {})
          #
          # @param payout_id [String] Id of the Payout to get breakup for
          #
          # @param page_number [Integer] Page number (0-indexed). Default: 0.
          #
          # @param page_size [Integer] Number of items per page. Default: 10, Max: 100.
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Payouts::Breakup::DetailListResponse>]
          #
          # @see Dodopayments::Models::Payouts::Breakup::DetailListParams
          def list(payout_id, params = {})
            parsed, options = Dodopayments::Payouts::Breakup::DetailListParams.dump_request(params)
            query = Dodopayments::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["payouts/%1$s/breakup/details", payout_id],
              query: query,
              page: Dodopayments::Internal::DefaultPageNumberPagination,
              model: Dodopayments::Models::Payouts::Breakup::DetailListResponse,
              options: options
            )
          end

          # Downloads the complete payout breakup as a CSV file. Each row represents a
          # balance ledger entry with columns: Ledger ID, Event Type, Original Amount,
          # Original Currency, Reference Object ID, Description, Created At, USD Equivalent
          # Amount, and Payout Currency Amount.
          #
          # @overload download_csv(payout_id, request_options: {})
          #
          # @param payout_id [String] Id of the Payout to get breakup for
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Dodopayments::Models::Payouts::Breakup::DetailDownloadCsvParams
          def download_csv(payout_id, params = {})
            @client.request(
              method: :get,
              path: ["payouts/%1$s/breakup/details/csv", payout_id],
              model: NilClass,
              options: params[:request_options]
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
  end
end

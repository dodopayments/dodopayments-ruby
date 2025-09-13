# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      class Wallets
        class LedgerEntries
          # @overload create(customer_id, amount:, currency:, entry_type:, idempotency_key: nil, reason: nil, request_options: {})
          #
          # @param customer_id [String] Customer ID
          #
          # @param amount [Integer]
          #
          # @param currency [Symbol, Dodopayments::Models::Currency] Currency of the wallet to adjust
          #
          # @param entry_type [Symbol, Dodopayments::Models::Customers::Wallets::LedgerEntryCreateParams::EntryType] Type of ledger entry - credit or debit
          #
          # @param idempotency_key [String, nil] Optional idempotency key to prevent duplicate entries
          #
          # @param reason [String, nil]
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Dodopayments::Models::Customers::CustomerWallet]
          #
          # @see Dodopayments::Models::Customers::Wallets::LedgerEntryCreateParams
          def create(customer_id, params)
            parsed, options = Dodopayments::Customers::Wallets::LedgerEntryCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["customers/%1$s/wallets/ledger-entries", customer_id],
              body: parsed,
              model: Dodopayments::Customers::CustomerWallet,
              options: options
            )
          end

          # @overload list(customer_id, currency: nil, page_number: nil, page_size: nil, request_options: {})
          #
          # @param customer_id [String] Customer ID
          #
          # @param currency [Symbol, Dodopayments::Models::Currency] Optional currency filter
          #
          # @param page_number [Integer]
          #
          # @param page_size [Integer]
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Customers::Wallets::CustomerWalletTransaction>]
          #
          # @see Dodopayments::Models::Customers::Wallets::LedgerEntryListParams
          def list(customer_id, params = {})
            parsed, options = Dodopayments::Customers::Wallets::LedgerEntryListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["customers/%1$s/wallets/ledger-entries", customer_id],
              query: parsed,
              page: Dodopayments::Internal::DefaultPageNumberPagination,
              model: Dodopayments::Customers::Wallets::CustomerWalletTransaction,
              options: options
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

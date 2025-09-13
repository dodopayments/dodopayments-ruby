# typed: strong

module Dodopayments
  module Resources
    class Customers
      class Wallets
        class LedgerEntries
          sig do
            params(
              customer_id: String,
              amount: Integer,
              currency: Dodopayments::Currency::OrSymbol,
              entry_type:
                Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType::OrSymbol,
              idempotency_key: T.nilable(String),
              reason: T.nilable(String),
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(Dodopayments::Customers::CustomerWallet)
          end
          def create(
            # Customer ID
            customer_id,
            amount:,
            # Currency of the wallet to adjust
            currency:,
            # Type of ledger entry - credit or debit
            entry_type:,
            # Optional idempotency key to prevent duplicate entries
            idempotency_key: nil,
            reason: nil,
            request_options: {}
          )
          end

          sig do
            params(
              customer_id: String,
              currency: Dodopayments::Currency::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(
              Dodopayments::Internal::DefaultPageNumberPagination[
                Dodopayments::Customers::Wallets::CustomerWalletTransaction
              ]
            )
          end
          def list(
            # Customer ID
            customer_id,
            # Optional currency filter
            currency: nil,
            page_number: nil,
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
  end
end

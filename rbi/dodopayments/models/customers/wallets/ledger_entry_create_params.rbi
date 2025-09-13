# typed: strong

module Dodopayments
  module Models
    module Customers
      module Wallets
        class LedgerEntryCreateParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Customers::Wallets::LedgerEntryCreateParams,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :amount

          # Currency of the wallet to adjust
          sig { returns(Dodopayments::Currency::OrSymbol) }
          attr_accessor :currency

          # Type of ledger entry - credit or debit
          sig do
            returns(
              Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType::OrSymbol
            )
          end
          attr_accessor :entry_type

          # Optional idempotency key to prevent duplicate entries
          sig { returns(T.nilable(String)) }
          attr_accessor :idempotency_key

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              amount: Integer,
              currency: Dodopayments::Currency::OrSymbol,
              entry_type:
                Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType::OrSymbol,
              idempotency_key: T.nilable(String),
              reason: T.nilable(String),
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
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
            override.returns(
              {
                amount: Integer,
                currency: Dodopayments::Currency::OrSymbol,
                entry_type:
                  Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType::OrSymbol,
                idempotency_key: T.nilable(String),
                reason: T.nilable(String),
                request_options: Dodopayments::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Type of ledger entry - credit or debit
          module EntryType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end

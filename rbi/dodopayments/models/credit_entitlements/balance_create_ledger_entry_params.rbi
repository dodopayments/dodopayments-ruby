# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class BalanceCreateLedgerEntryParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::BalanceCreateLedgerEntryParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        # Amount to credit or debit
        sig { returns(String) }
        attr_accessor :amount

        # Entry type: credit or debit
        sig do
          returns(Dodopayments::CreditEntitlements::LedgerEntryType::OrSymbol)
        end
        attr_accessor :entry_type

        # Expiration for credited amount (only for credit type)
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # Idempotency key to prevent duplicate entries
        sig { returns(T.nilable(String)) }
        attr_accessor :idempotency_key

        # Optional metadata (max 50 key-value pairs, key max 40 chars, value max 500
        # chars)
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        # Human-readable reason for the entry
        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            credit_entitlement_id: String,
            amount: String,
            entry_type:
              Dodopayments::CreditEntitlements::LedgerEntryType::OrSymbol,
            expires_at: T.nilable(Time),
            idempotency_key: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            reason: T.nilable(String),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          credit_entitlement_id:,
          # Amount to credit or debit
          amount:,
          # Entry type: credit or debit
          entry_type:,
          # Expiration for credited amount (only for credit type)
          expires_at: nil,
          # Idempotency key to prevent duplicate entries
          idempotency_key: nil,
          # Optional metadata (max 50 key-value pairs, key max 40 chars, value max 500
          # chars)
          metadata: nil,
          # Human-readable reason for the entry
          reason: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              amount: String,
              entry_type:
                Dodopayments::CreditEntitlements::LedgerEntryType::OrSymbol,
              expires_at: T.nilable(Time),
              idempotency_key: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              reason: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

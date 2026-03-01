# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class BalanceCreateLedgerEntryResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :balance_after

        sig { returns(String) }
        attr_accessor :balance_before

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Dodopayments::CreditEntitlements::LedgerEntryType::TaggedSymbol
          )
        end
        attr_accessor :entry_type

        sig { returns(T::Boolean) }
        attr_accessor :is_credit

        sig { returns(String) }
        attr_accessor :overage_after

        sig { returns(String) }
        attr_accessor :overage_before

        sig { returns(T.nilable(String)) }
        attr_accessor :grant_id

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        # Response for creating a ledger entry
        sig do
          params(
            id: String,
            amount: String,
            balance_after: String,
            balance_before: String,
            created_at: Time,
            credit_entitlement_id: String,
            customer_id: String,
            entry_type:
              Dodopayments::CreditEntitlements::LedgerEntryType::OrSymbol,
            is_credit: T::Boolean,
            overage_after: String,
            overage_before: String,
            grant_id: T.nilable(String),
            reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          balance_after:,
          balance_before:,
          created_at:,
          credit_entitlement_id:,
          customer_id:,
          entry_type:,
          is_credit:,
          overage_after:,
          overage_before:,
          grant_id: nil,
          reason: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              balance_after: String,
              balance_before: String,
              created_at: Time,
              credit_entitlement_id: String,
              customer_id: String,
              entry_type:
                Dodopayments::CreditEntitlements::LedgerEntryType::TaggedSymbol,
              is_credit: T::Boolean,
              overage_after: String,
              overage_before: String,
              grant_id: T.nilable(String),
              reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

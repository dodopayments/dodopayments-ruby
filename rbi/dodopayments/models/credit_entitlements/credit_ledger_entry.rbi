# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class CreditLedgerEntry < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::CreditLedgerEntry,
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

        sig { returns(String) }
        attr_accessor :business_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T::Boolean) }
        attr_accessor :is_credit

        sig { returns(String) }
        attr_accessor :overage_after

        sig { returns(String) }
        attr_accessor :overage_before

        sig do
          returns(
            Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
          )
        end
        attr_accessor :transaction_type

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :grant_id

        sig { returns(T.nilable(String)) }
        attr_accessor :reference_id

        sig { returns(T.nilable(String)) }
        attr_accessor :reference_type

        # Response for a ledger entry
        sig do
          params(
            id: String,
            amount: String,
            balance_after: String,
            balance_before: String,
            business_id: String,
            created_at: Time,
            credit_entitlement_id: String,
            customer_id: String,
            is_credit: T::Boolean,
            overage_after: String,
            overage_before: String,
            transaction_type:
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::OrSymbol,
            description: T.nilable(String),
            grant_id: T.nilable(String),
            reference_id: T.nilable(String),
            reference_type: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          balance_after:,
          balance_before:,
          business_id:,
          created_at:,
          credit_entitlement_id:,
          customer_id:,
          is_credit:,
          overage_after:,
          overage_before:,
          transaction_type:,
          description: nil,
          grant_id: nil,
          reference_id: nil,
          reference_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              balance_after: String,
              balance_before: String,
              business_id: String,
              created_at: Time,
              credit_entitlement_id: String,
              customer_id: String,
              is_credit: T::Boolean,
              overage_after: String,
              overage_before: String,
              transaction_type:
                Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol,
              description: T.nilable(String),
              grant_id: T.nilable(String),
              reference_id: T.nilable(String),
              reference_type: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module TransactionType
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_ADDED =
            T.let(
              :credit_added,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          CREDIT_DEDUCTED =
            T.let(
              :credit_deducted,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          CREDIT_EXPIRED =
            T.let(
              :credit_expired,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          CREDIT_ROLLED_OVER =
            T.let(
              :credit_rolled_over,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          ROLLOVER_FORFEITED =
            T.let(
              :rollover_forfeited,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          OVERAGE_CHARGED =
            T.let(
              :overage_charged,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          OVERAGE_RESET =
            T.let(
              :overage_reset,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          AUTO_TOP_UP =
            T.let(
              :auto_top_up,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          MANUAL_ADJUSTMENT =
            T.let(
              :manual_adjustment,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )
          REFUND =
            T.let(
              :refund,
              Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType::TaggedSymbol
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

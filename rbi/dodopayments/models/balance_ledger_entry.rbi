# typed: strong

module Dodopayments
  module Models
    class BalanceLedgerEntry < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::BalanceLedgerEntry,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol) }
      attr_accessor :event_type

      sig { returns(T::Boolean) }
      attr_accessor :is_credit

      sig { returns(Integer) }
      attr_accessor :usd_equivalent_amount

      sig { returns(T.nilable(Integer)) }
      attr_accessor :after_balance

      sig { returns(T.nilable(Integer)) }
      attr_accessor :before_balance

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :reference_object_id

      sig do
        params(
          id: String,
          amount: Integer,
          business_id: String,
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          event_type: Dodopayments::BalanceLedgerEntry::EventType::OrSymbol,
          is_credit: T::Boolean,
          usd_equivalent_amount: Integer,
          after_balance: T.nilable(Integer),
          before_balance: T.nilable(Integer),
          description: T.nilable(String),
          reference_object_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        business_id:,
        created_at:,
        currency:,
        event_type:,
        is_credit:,
        usd_equivalent_amount:,
        after_balance: nil,
        before_balance: nil,
        description: nil,
        reference_object_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            business_id: String,
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            event_type:
              Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol,
            is_credit: T::Boolean,
            usd_equivalent_amount: Integer,
            after_balance: T.nilable(Integer),
            before_balance: T.nilable(Integer),
            description: T.nilable(String),
            reference_object_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module EventType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::BalanceLedgerEntry::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT =
          T.let(
            :payment,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        REFUND =
          T.let(
            :refund,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        REFUND_REVERSAL =
          T.let(
            :refund_reversal,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        DISPUTE =
          T.let(
            :dispute,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        DISPUTE_REVERSAL =
          T.let(
            :dispute_reversal,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        TAX =
          T.let(:tax, Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol)
        TAX_REVERSAL =
          T.let(
            :tax_reversal,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        PAYMENT_FEES =
          T.let(
            :payment_fees,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        REFUND_FEES =
          T.let(
            :refund_fees,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        REFUND_FEES_REVERSAL =
          T.let(
            :refund_fees_reversal,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        DISPUTE_FEES =
          T.let(
            :dispute_fees,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        PAYOUT =
          T.let(
            :payout,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        PAYOUT_FEES =
          T.let(
            :payout_fees,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        PAYOUT_REVERSAL =
          T.let(
            :payout_reversal,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        PAYOUT_FEES_REVERSAL =
          T.let(
            :payout_fees_reversal,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        DODO_CREDITS =
          T.let(
            :dodo_credits,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        ADJUSTMENT =
          T.let(
            :adjustment,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )
        CURRENCY_CONVERSION =
          T.let(
            :currency_conversion,
            Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::BalanceLedgerEntry::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

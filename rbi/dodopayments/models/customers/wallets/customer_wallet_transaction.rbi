# typed: strong

module Dodopayments
  module Models
    module Customers
      module Wallets
        class CustomerWalletTransaction < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Customers::Wallets::CustomerWalletTransaction,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Integer) }
          attr_accessor :after_balance

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Integer) }
          attr_accessor :before_balance

          sig { returns(String) }
          attr_accessor :business_id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Dodopayments::Currency::TaggedSymbol) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
            )
          end
          attr_accessor :event_type

          sig { returns(T::Boolean) }
          attr_accessor :is_credit

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig { returns(T.nilable(String)) }
          attr_accessor :reference_object_id

          sig do
            params(
              id: String,
              after_balance: Integer,
              amount: Integer,
              before_balance: Integer,
              business_id: String,
              created_at: Time,
              currency: Dodopayments::Currency::OrSymbol,
              customer_id: String,
              event_type:
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::OrSymbol,
              is_credit: T::Boolean,
              reason: T.nilable(String),
              reference_object_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            after_balance:,
            amount:,
            before_balance:,
            business_id:,
            created_at:,
            currency:,
            customer_id:,
            event_type:,
            is_credit:,
            reason: nil,
            reference_object_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                after_balance: Integer,
                amount: Integer,
                before_balance: Integer,
                business_id: String,
                created_at: Time,
                currency: Dodopayments::Currency::TaggedSymbol,
                customer_id: String,
                event_type:
                  Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol,
                is_credit: T::Boolean,
                reason: T.nilable(String),
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
                T.all(
                  Symbol,
                  Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT =
              T.let(
                :payment,
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
              )
            PAYMENT_REVERSAL =
              T.let(
                :payment_reversal,
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
              )
            REFUND =
              T.let(
                :refund,
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
              )
            REFUND_REVERSAL =
              T.let(
                :refund_reversal,
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
              )
            DISPUTE =
              T.let(
                :dispute,
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
              )
            DISPUTE_REVERSAL =
              T.let(
                :dispute_reversal,
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
              )
            MERCHANT_ADJUSTMENT =
              T.let(
                :merchant_adjustment,
                Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType::TaggedSymbol
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

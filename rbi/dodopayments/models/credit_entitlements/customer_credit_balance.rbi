# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class CustomerCreditBalance < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::CustomerCreditBalance,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :balance

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :overage

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :last_transaction_at

        # Response for a customer's credit balance
        sig do
          params(
            id: String,
            balance: String,
            created_at: Time,
            credit_entitlement_id: String,
            customer_id: String,
            overage: String,
            updated_at: Time,
            last_transaction_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          balance:,
          created_at:,
          credit_entitlement_id:,
          customer_id:,
          overage:,
          updated_at:,
          last_transaction_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              balance: String,
              created_at: Time,
              credit_entitlement_id: String,
              customer_id: String,
              overage: String,
              updated_at: Time,
              last_transaction_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

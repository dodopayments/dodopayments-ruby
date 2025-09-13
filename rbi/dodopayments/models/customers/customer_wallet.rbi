# typed: strong

module Dodopayments
  module Models
    CustomerWallet = Customers::CustomerWallet

    module Customers
      class CustomerWallet < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Customers::CustomerWallet,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :balance

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :currency

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            balance: Integer,
            created_at: Time,
            currency: Dodopayments::Currency::OrSymbol,
            customer_id: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          balance:,
          created_at:,
          currency:,
          customer_id:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              balance: Integer,
              created_at: Time,
              currency: Dodopayments::Currency::TaggedSymbol,
              customer_id: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

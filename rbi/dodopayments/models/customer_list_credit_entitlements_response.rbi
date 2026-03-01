# typed: strong

module Dodopayments
  module Models
    class CustomerListCreditEntitlementsResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::CustomerListCreditEntitlementsResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Dodopayments::Models::CustomerListCreditEntitlementsResponse::Item
          ]
        )
      end
      attr_accessor :items

      sig do
        params(
          items:
            T::Array[
              Dodopayments::Models::CustomerListCreditEntitlementsResponse::Item::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(items:)
      end

      sig do
        override.returns(
          {
            items:
              T::Array[
                Dodopayments::Models::CustomerListCreditEntitlementsResponse::Item
              ]
          }
        )
      end
      def to_hash
      end

      class Item < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CustomerListCreditEntitlementsResponse::Item,
              Dodopayments::Internal::AnyHash
            )
          end

        # Customer's current remaining credit balance
        sig { returns(String) }
        attr_accessor :balance

        # Credit entitlement ID
        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        # Name of the credit entitlement
        sig { returns(String) }
        attr_accessor :name

        # Customer's current overage balance
        sig { returns(String) }
        attr_accessor :overage

        # Unit label (e.g. "API Calls", "Tokens")
        sig { returns(String) }
        attr_accessor :unit

        # Description of the credit entitlement
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # A credit entitlement with the customer's current balance
        sig do
          params(
            balance: String,
            credit_entitlement_id: String,
            name: String,
            overage: String,
            unit: String,
            description: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer's current remaining credit balance
          balance:,
          # Credit entitlement ID
          credit_entitlement_id:,
          # Name of the credit entitlement
          name:,
          # Customer's current overage balance
          overage:,
          # Unit label (e.g. "API Calls", "Tokens")
          unit:,
          # Description of the credit entitlement
          description: nil
        )
        end

        sig do
          override.returns(
            {
              balance: String,
              credit_entitlement_id: String,
              name: String,
              overage: String,
              unit: String,
              description: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

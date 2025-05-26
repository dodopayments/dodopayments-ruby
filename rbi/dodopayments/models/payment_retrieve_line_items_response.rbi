# typed: strong

module Dodopayments
  module Models
    class PaymentRetrieveLineItemsResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::PaymentRetrieveLineItemsResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig do
        returns(
          T::Array[Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item]
        )
      end
      attr_accessor :items

      sig do
        params(
          currency: Dodopayments::Currency::OrSymbol,
          items:
            T::Array[
              Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(currency:, items:)
      end

      sig do
        override.returns(
          {
            currency: Dodopayments::Currency::TaggedSymbol,
            items:
              T::Array[
                Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item
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
              Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :items_id

        sig { returns(Integer) }
        attr_accessor :tax

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            amount: Integer,
            items_id: String,
            tax: Integer,
            description: T.nilable(String),
            name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(amount:, items_id:, tax:, description: nil, name: nil)
        end

        sig do
          override.returns(
            {
              amount: Integer,
              items_id: String,
              tax: Integer,
              description: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

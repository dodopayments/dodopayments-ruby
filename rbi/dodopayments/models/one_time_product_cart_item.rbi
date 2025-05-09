# typed: strong

module Dodopayments
  module Models
    class OneTimeProductCartItem < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :product_id

      sig { returns(Integer) }
      attr_accessor :quantity

      # Amount the customer pays if pay_what_you_want is enabled. If disabled then
      # amount will be ignored Represented in the lowest denomination of the currency
      # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig do
        params(
          product_id: String,
          quantity: Integer,
          amount: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        product_id:,
        quantity:,
        # Amount the customer pays if pay_what_you_want is enabled. If disabled then
        # amount will be ignored Represented in the lowest denomination of the currency
        # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        amount: nil
      )
      end

      sig do
        override.returns(
          { product_id: String, quantity: Integer, amount: T.nilable(Integer) }
        )
      end
      def to_hash
      end
    end
  end
end

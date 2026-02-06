# typed: strong

module Dodopayments
  module Models
    class ProductItemReq < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::ProductItemReq, Dodopayments::Internal::AnyHash)
        end

      # unique id of the product
      sig { returns(String) }
      attr_accessor :product_id

      sig { returns(Integer) }
      attr_accessor :quantity

      # only valid if product is a subscription
      sig { returns(T.nilable(T::Array[Dodopayments::AttachAddon])) }
      attr_accessor :addons

      # Amount the customer pays if pay_what_you_want is enabled. If disabled then
      # amount will be ignored Represented in the lowest denomination of the currency
      # (e.g., cents for USD). For example, to charge $1.00, pass `100`. Only applicable
      # for one time payments
      #
      # If amount is not set for pay_what_you_want product, customer is allowed to
      # select the amount.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig do
        params(
          product_id: String,
          quantity: Integer,
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
          amount: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # unique id of the product
        product_id:,
        quantity:,
        # only valid if product is a subscription
        addons: nil,
        # Amount the customer pays if pay_what_you_want is enabled. If disabled then
        # amount will be ignored Represented in the lowest denomination of the currency
        # (e.g., cents for USD). For example, to charge $1.00, pass `100`. Only applicable
        # for one time payments
        #
        # If amount is not set for pay_what_you_want product, customer is allowed to
        # select the amount.
        amount: nil
      )
      end

      sig do
        override.returns(
          {
            product_id: String,
            quantity: Integer,
            addons: T.nilable(T::Array[Dodopayments::AttachAddon]),
            amount: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end

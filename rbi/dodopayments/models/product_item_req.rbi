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

      # Per-checkout-session overrides for credit entitlements already attached to this
      # product. Each entry overrides the `credits_amount` granted by the referenced
      # credit entitlement when this checkout session is fulfilled. The
      # credit_entitlement_id must already be attached to the product.
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::ProductItemReq::CreditEntitlement])
        )
      end
      attr_accessor :credit_entitlements

      sig do
        params(
          product_id: String,
          quantity: Integer,
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
          amount: T.nilable(Integer),
          credit_entitlements:
            T.nilable(
              T::Array[Dodopayments::ProductItemReq::CreditEntitlement::OrHash]
            )
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
        amount: nil,
        # Per-checkout-session overrides for credit entitlements already attached to this
        # product. Each entry overrides the `credits_amount` granted by the referenced
        # credit entitlement when this checkout session is fulfilled. The
        # credit_entitlement_id must already be attached to the product.
        credit_entitlements: nil
      )
      end

      sig do
        override.returns(
          {
            product_id: String,
            quantity: Integer,
            addons: T.nilable(T::Array[Dodopayments::AttachAddon]),
            amount: T.nilable(Integer),
            credit_entitlements:
              T.nilable(
                T::Array[Dodopayments::ProductItemReq::CreditEntitlement]
              )
          }
        )
      end
      def to_hash
      end

      class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductItemReq::CreditEntitlement,
              Dodopayments::Internal::AnyHash
            )
          end

        # ID of the credit entitlement to override. Must already be attached to the
        # product.
        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        # Number of credits to grant for this checkout session, overriding the
        # product-level `credits_amount` set on the credit entitlement mapping. Must be
        # greater than zero.
        sig { returns(String) }
        attr_accessor :credits_amount

        # Per-checkout-session override for a single credit entitlement attached to a
        # product.
        sig do
          params(credit_entitlement_id: String, credits_amount: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the credit entitlement to override. Must already be attached to the
          # product.
          credit_entitlement_id:,
          # Number of credits to grant for this checkout session, overriding the
          # product-level `credits_amount` set on the credit entitlement mapping. Must be
          # greater than zero.
          credits_amount:
        )
        end

        sig do
          override.returns(
            { credit_entitlement_id: String, credits_amount: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end

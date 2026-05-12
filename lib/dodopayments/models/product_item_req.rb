# frozen_string_literal: true

module Dodopayments
  module Models
    class ProductItemReq < Dodopayments::Internal::Type::BaseModel
      # @!attribute product_id
      #   unique id of the product
      #
      #   @return [String]
      required :product_id, String

      # @!attribute quantity
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute addons
      #   only valid if product is a subscription
      #
      #   @return [Array<Dodopayments::Models::AttachAddon>, nil]
      optional :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachAddon] }, nil?: true

      # @!attribute amount
      #   Amount the customer pays if pay_what_you_want is enabled. If disabled then
      #   amount will be ignored Represented in the lowest denomination of the currency
      #   (e.g., cents for USD). For example, to charge $1.00, pass `100`. Only applicable
      #   for one time payments
      #
      #   If amount is not set for pay_what_you_want product, customer is allowed to
      #   select the amount.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute credit_entitlements
      #   Per-checkout-session overrides for credit entitlements already attached to this
      #   product. Each entry overrides the `credits_amount` granted by the referenced
      #   credit entitlement when this checkout session is fulfilled. The
      #   credit_entitlement_id must already be attached to the product.
      #
      #   @return [Array<Dodopayments::Models::ProductItemReq::CreditEntitlement>, nil]
      optional :credit_entitlements,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductItemReq::CreditEntitlement] },
               nil?: true

      # @!method initialize(product_id:, quantity:, addons: nil, amount: nil, credit_entitlements: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductItemReq} for more details.
      #
      #   @param product_id [String] unique id of the product
      #
      #   @param quantity [Integer]
      #
      #   @param addons [Array<Dodopayments::Models::AttachAddon>, nil] only valid if product is a subscription
      #
      #   @param amount [Integer, nil] Amount the customer pays if pay_what_you_want is enabled. If disabled then amoun
      #
      #   @param credit_entitlements [Array<Dodopayments::Models::ProductItemReq::CreditEntitlement>, nil] Per-checkout-session overrides for credit entitlements already attached

      class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
        # @!attribute credit_entitlement_id
        #   ID of the credit entitlement to override. Must already be attached to the
        #   product.
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute credits_amount
        #   Number of credits to grant for this checkout session, overriding the
        #   product-level `credits_amount` set on the credit entitlement mapping. Must be
        #   greater than zero.
        #
        #   @return [String]
        required :credits_amount, String

        # @!method initialize(credit_entitlement_id:, credits_amount:)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::ProductItemReq::CreditEntitlement} for more details.
        #
        #   Per-checkout-session override for a single credit entitlement attached to a
        #   product.
        #
        #   @param credit_entitlement_id [String] ID of the credit entitlement to override. Must already be attached to the produc
        #
        #   @param credits_amount [String] Number of credits to grant for this checkout session, overriding the
      end
    end
  end
end

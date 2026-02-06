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

      # @!method initialize(product_id:, quantity:, addons: nil, amount: nil)
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
    end
  end
end

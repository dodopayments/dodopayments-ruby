# frozen_string_literal: true

module Dodopayments
  module Models
    class OneTimeProductCartItem < Dodopayments::Internal::Type::BaseModel
      # @!attribute product_id
      #
      #   @return [String]
      required :product_id, String

      # @!attribute quantity
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute amount
      #   Amount the customer pays if pay_what_you_want is enabled. If disabled then
      #   amount will be ignored Represented in the lowest denomination of the currency
      #   (e.g., cents for USD). For example, to charge $1.00, pass `100`.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!parse
      #   # @param product_id [String]
      #   # @param quantity [Integer]
      #   # @param amount [Integer, nil]
      #   #
      #   def initialize(product_id:, quantity:, amount: nil, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end

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

      # @!method initialize(product_id:, quantity:)
      #   @param product_id [String]
      #   @param quantity [Integer]
    end
  end
end

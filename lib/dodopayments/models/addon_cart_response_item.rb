# frozen_string_literal: true

module Dodopayments
  module Models
    class AddonCartResponseItem < Dodopayments::Internal::Type::BaseModel
      # @!attribute addon_id
      #
      #   @return [String]
      required :addon_id, String

      # @!attribute quantity
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!method initialize(addon_id:, quantity:)
      #   Response struct representing subscription details
      #
      #   @param addon_id [String]
      #   @param quantity [Integer]
    end
  end
end

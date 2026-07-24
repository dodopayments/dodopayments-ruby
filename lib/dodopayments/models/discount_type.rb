# frozen_string_literal: true

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Internal::Type::Enum

      FLAT = :flat
      PERCENTAGE = :percentage

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

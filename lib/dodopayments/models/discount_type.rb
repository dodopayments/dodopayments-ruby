# frozen_string_literal: true

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Internal::Type::Enum

      PERCENTAGE = :percentage

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end

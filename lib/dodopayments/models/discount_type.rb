# frozen_string_literal: true

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Internal::Type::Enum

      PERCENTAGE = :percentage

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end

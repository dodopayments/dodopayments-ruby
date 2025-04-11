# frozen_string_literal: true

module Dodopayments
  module Models
    module TimeInterval
      extend Dodopayments::Internal::Type::Enum

      DAY = :Day
      WEEK = :Week
      MONTH = :Month
      YEAR = :Year

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end

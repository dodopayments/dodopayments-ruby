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

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end

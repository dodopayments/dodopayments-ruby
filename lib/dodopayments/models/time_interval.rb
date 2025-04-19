# frozen_string_literal: true

module Dodopayments
  module Models
    module TimeInterval
      extend Dodopayments::Internal::Type::Enum

      DAY = :Day
      WEEK = :Week
      MONTH = :Month
      YEAR = :Year

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

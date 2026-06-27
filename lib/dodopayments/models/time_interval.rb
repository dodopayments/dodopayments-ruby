# frozen_string_literal: true

module Dodopayments
  module Models
    # Unit of a duration count (e.g. license-key validity period).
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

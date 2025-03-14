# frozen_string_literal: true

module Dodopayments
  module Models
    # @abstract
    class TimeInterval < Dodopayments::Enum
      DAY = :Day
      WEEK = :Week
      MONTH = :Month
      YEAR = :Year

      finalize!
    end
  end
end

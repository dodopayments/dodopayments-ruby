# frozen_string_literal: true

module Dodopayments
  module Models
    module TimeInterval
      extend Dodopayments::Enum

      DAY = :Day
      WEEK = :Week
      MONTH = :Month
      YEAR = :Year

      finalize!
    end
  end
end

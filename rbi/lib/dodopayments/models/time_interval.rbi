# typed: strong

module Dodopayments
  module Models
    class TimeInterval < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      DAY = :Day
      WEEK = :Week
      MONTH = :Month
      YEAR = :Year
    end
  end
end

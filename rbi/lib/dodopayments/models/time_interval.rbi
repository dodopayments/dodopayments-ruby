# typed: strong

module Dodopayments
  module Models
    class TimeInterval < Dodopayments::Enum
      abstract!

      DAY = :Day
      WEEK = :Week
      MONTH = :Month
      YEAR = :Year

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end

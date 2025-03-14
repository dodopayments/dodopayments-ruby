# typed: strong

module Dodopayments
  module Models
    class DiscountType < Dodopayments::Enum
      abstract!

      PERCENTAGE = :percentage

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end

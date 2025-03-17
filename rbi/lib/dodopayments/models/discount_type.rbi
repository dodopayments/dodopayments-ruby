# typed: strong

module Dodopayments
  module Models
    class DiscountType < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      PERCENTAGE = :percentage
    end
  end
end

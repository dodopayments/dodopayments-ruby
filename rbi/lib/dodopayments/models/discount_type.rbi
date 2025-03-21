# typed: strong

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::DiscountType) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::DiscountType::TaggedSymbol) }

      PERCENTAGE = T.let(:percentage, Dodopayments::Models::DiscountType::OrSymbol)
    end
  end
end

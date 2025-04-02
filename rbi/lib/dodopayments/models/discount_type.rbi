# typed: strong

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::DiscountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String, Dodopayments::Models::DiscountType::TaggedSymbol) }

      PERCENTAGE = T.let(:percentage, Dodopayments::Models::DiscountType::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[Dodopayments::Models::DiscountType::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end

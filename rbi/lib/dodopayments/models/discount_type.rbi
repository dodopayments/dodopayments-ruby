# typed: strong

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::DiscountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PERCENTAGE = T.let(:percentage, Dodopayments::Models::DiscountType::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::DiscountType::TaggedSymbol]) }
      def self.values; end
    end
  end
end

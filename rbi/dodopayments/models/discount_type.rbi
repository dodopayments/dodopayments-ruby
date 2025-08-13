# typed: strong

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::DiscountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PERCENTAGE = T.let(:percentage, Dodopayments::DiscountType::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::DiscountType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

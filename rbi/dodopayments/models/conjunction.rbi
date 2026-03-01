# typed: strong

module Dodopayments
  module Models
    module Conjunction
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Conjunction) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AND = T.let(:and, Dodopayments::Conjunction::TaggedSymbol)
      OR = T.let(:or, Dodopayments::Conjunction::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::Conjunction::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

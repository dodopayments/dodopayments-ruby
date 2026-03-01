# typed: strong

module Dodopayments
  module Models
    module FilterOperator
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::FilterOperator) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EQUALS = T.let(:equals, Dodopayments::FilterOperator::TaggedSymbol)
      NOT_EQUALS =
        T.let(:not_equals, Dodopayments::FilterOperator::TaggedSymbol)
      GREATER_THAN =
        T.let(:greater_than, Dodopayments::FilterOperator::TaggedSymbol)
      GREATER_THAN_OR_EQUALS =
        T.let(
          :greater_than_or_equals,
          Dodopayments::FilterOperator::TaggedSymbol
        )
      LESS_THAN = T.let(:less_than, Dodopayments::FilterOperator::TaggedSymbol)
      LESS_THAN_OR_EQUALS =
        T.let(:less_than_or_equals, Dodopayments::FilterOperator::TaggedSymbol)
      CONTAINS = T.let(:contains, Dodopayments::FilterOperator::TaggedSymbol)
      DOES_NOT_CONTAIN =
        T.let(:does_not_contain, Dodopayments::FilterOperator::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::FilterOperator::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

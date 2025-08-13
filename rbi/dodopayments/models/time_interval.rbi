# typed: strong

module Dodopayments
  module Models
    module TimeInterval
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::TimeInterval) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DAY = T.let(:Day, Dodopayments::TimeInterval::TaggedSymbol)
      WEEK = T.let(:Week, Dodopayments::TimeInterval::TaggedSymbol)
      MONTH = T.let(:Month, Dodopayments::TimeInterval::TaggedSymbol)
      YEAR = T.let(:Year, Dodopayments::TimeInterval::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::TimeInterval::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

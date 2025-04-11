# typed: strong

module Dodopayments
  module Models
    module TimeInterval
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::TimeInterval) }
      OrSymbol = T.type_alias { T.any(Symbol, String, Dodopayments::Models::TimeInterval::TaggedSymbol) }

      DAY = T.let(:Day, Dodopayments::Models::TimeInterval::TaggedSymbol)
      WEEK = T.let(:Week, Dodopayments::Models::TimeInterval::TaggedSymbol)
      MONTH = T.let(:Month, Dodopayments::Models::TimeInterval::TaggedSymbol)
      YEAR = T.let(:Year, Dodopayments::Models::TimeInterval::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::TimeInterval::TaggedSymbol]) }
      def self.values; end
    end
  end
end

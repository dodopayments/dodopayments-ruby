# typed: strong

module Dodopayments
  module Models
    module TimeInterval
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::TimeInterval) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::TimeInterval::TaggedSymbol) }

      DAY = T.let(:Day, Dodopayments::Models::TimeInterval::OrSymbol)
      WEEK = T.let(:Week, Dodopayments::Models::TimeInterval::OrSymbol)
      MONTH = T.let(:Month, Dodopayments::Models::TimeInterval::OrSymbol)
      YEAR = T.let(:Year, Dodopayments::Models::TimeInterval::OrSymbol)
    end
  end
end

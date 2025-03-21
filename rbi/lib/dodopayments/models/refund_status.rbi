# typed: strong

module Dodopayments
  module Models
    module RefundStatus
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::RefundStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::RefundStatus::TaggedSymbol) }

      SUCCEEDED = T.let(:succeeded, Dodopayments::Models::RefundStatus::OrSymbol)
      FAILED = T.let(:failed, Dodopayments::Models::RefundStatus::OrSymbol)
      PENDING = T.let(:pending, Dodopayments::Models::RefundStatus::OrSymbol)
      REVIEW = T.let(:review, Dodopayments::Models::RefundStatus::OrSymbol)
    end
  end
end

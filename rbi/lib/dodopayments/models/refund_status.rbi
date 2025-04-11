# typed: strong

module Dodopayments
  module Models
    module RefundStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::RefundStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String, Dodopayments::Models::RefundStatus::TaggedSymbol) }

      SUCCEEDED = T.let(:succeeded, Dodopayments::Models::RefundStatus::TaggedSymbol)
      FAILED = T.let(:failed, Dodopayments::Models::RefundStatus::TaggedSymbol)
      PENDING = T.let(:pending, Dodopayments::Models::RefundStatus::TaggedSymbol)
      REVIEW = T.let(:review, Dodopayments::Models::RefundStatus::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::RefundStatus::TaggedSymbol]) }
      def self.values; end
    end
  end
end

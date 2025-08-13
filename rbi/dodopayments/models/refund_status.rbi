# typed: strong

module Dodopayments
  module Models
    module RefundStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::RefundStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SUCCEEDED = T.let(:succeeded, Dodopayments::RefundStatus::TaggedSymbol)
      FAILED = T.let(:failed, Dodopayments::RefundStatus::TaggedSymbol)
      PENDING = T.let(:pending, Dodopayments::RefundStatus::TaggedSymbol)
      REVIEW = T.let(:review, Dodopayments::RefundStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::RefundStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

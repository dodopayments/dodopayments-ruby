# typed: strong

module Dodopayments
  module Models
    module PaymentRefundStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::PaymentRefundStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PARTIAL = T.let(:partial, Dodopayments::PaymentRefundStatus::TaggedSymbol)
      FULL = T.let(:full, Dodopayments::PaymentRefundStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::PaymentRefundStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

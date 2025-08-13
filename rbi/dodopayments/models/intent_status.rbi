# typed: strong

module Dodopayments
  module Models
    module IntentStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::IntentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SUCCEEDED = T.let(:succeeded, Dodopayments::IntentStatus::TaggedSymbol)
      FAILED = T.let(:failed, Dodopayments::IntentStatus::TaggedSymbol)
      CANCELLED = T.let(:cancelled, Dodopayments::IntentStatus::TaggedSymbol)
      PROCESSING = T.let(:processing, Dodopayments::IntentStatus::TaggedSymbol)
      REQUIRES_CUSTOMER_ACTION =
        T.let(
          :requires_customer_action,
          Dodopayments::IntentStatus::TaggedSymbol
        )
      REQUIRES_MERCHANT_ACTION =
        T.let(
          :requires_merchant_action,
          Dodopayments::IntentStatus::TaggedSymbol
        )
      REQUIRES_PAYMENT_METHOD =
        T.let(
          :requires_payment_method,
          Dodopayments::IntentStatus::TaggedSymbol
        )
      REQUIRES_CONFIRMATION =
        T.let(:requires_confirmation, Dodopayments::IntentStatus::TaggedSymbol)
      REQUIRES_CAPTURE =
        T.let(:requires_capture, Dodopayments::IntentStatus::TaggedSymbol)
      PARTIALLY_CAPTURED =
        T.let(:partially_captured, Dodopayments::IntentStatus::TaggedSymbol)
      PARTIALLY_CAPTURED_AND_CAPTURABLE =
        T.let(
          :partially_captured_and_capturable,
          Dodopayments::IntentStatus::TaggedSymbol
        )

      sig do
        override.returns(T::Array[Dodopayments::IntentStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

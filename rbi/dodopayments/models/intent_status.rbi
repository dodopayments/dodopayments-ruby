# typed: strong

module Dodopayments
  module Models
    module IntentStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::IntentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SUCCEEDED = T.let(:succeeded, Dodopayments::Models::IntentStatus::TaggedSymbol)
      FAILED = T.let(:failed, Dodopayments::Models::IntentStatus::TaggedSymbol)
      CANCELLED = T.let(:cancelled, Dodopayments::Models::IntentStatus::TaggedSymbol)
      PROCESSING = T.let(:processing, Dodopayments::Models::IntentStatus::TaggedSymbol)
      REQUIRES_CUSTOMER_ACTION =
        T.let(:requires_customer_action, Dodopayments::Models::IntentStatus::TaggedSymbol)
      REQUIRES_MERCHANT_ACTION =
        T.let(:requires_merchant_action, Dodopayments::Models::IntentStatus::TaggedSymbol)
      REQUIRES_PAYMENT_METHOD =
        T.let(:requires_payment_method, Dodopayments::Models::IntentStatus::TaggedSymbol)
      REQUIRES_CONFIRMATION = T.let(:requires_confirmation, Dodopayments::Models::IntentStatus::TaggedSymbol)
      REQUIRES_CAPTURE = T.let(:requires_capture, Dodopayments::Models::IntentStatus::TaggedSymbol)
      PARTIALLY_CAPTURED = T.let(:partially_captured, Dodopayments::Models::IntentStatus::TaggedSymbol)
      PARTIALLY_CAPTURED_AND_CAPTURABLE =
        T.let(:partially_captured_and_capturable, Dodopayments::Models::IntentStatus::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::IntentStatus::TaggedSymbol]) }
      def self.values; end
    end
  end
end

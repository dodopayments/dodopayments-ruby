# typed: strong

module Dodopayments
  module Models
    module IntentStatus
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::IntentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::IntentStatus::TaggedSymbol) }

      SUCCEEDED = T.let(:succeeded, Dodopayments::Models::IntentStatus::OrSymbol)
      FAILED = T.let(:failed, Dodopayments::Models::IntentStatus::OrSymbol)
      CANCELLED = T.let(:cancelled, Dodopayments::Models::IntentStatus::OrSymbol)
      PROCESSING = T.let(:processing, Dodopayments::Models::IntentStatus::OrSymbol)
      REQUIRES_CUSTOMER_ACTION = T.let(:requires_customer_action, Dodopayments::Models::IntentStatus::OrSymbol)
      REQUIRES_MERCHANT_ACTION = T.let(:requires_merchant_action, Dodopayments::Models::IntentStatus::OrSymbol)
      REQUIRES_PAYMENT_METHOD = T.let(:requires_payment_method, Dodopayments::Models::IntentStatus::OrSymbol)
      REQUIRES_CONFIRMATION = T.let(:requires_confirmation, Dodopayments::Models::IntentStatus::OrSymbol)
      REQUIRES_CAPTURE = T.let(:requires_capture, Dodopayments::Models::IntentStatus::OrSymbol)
      PARTIALLY_CAPTURED = T.let(:partially_captured, Dodopayments::Models::IntentStatus::OrSymbol)
      PARTIALLY_CAPTURED_AND_CAPTURABLE =
        T.let(:partially_captured_and_capturable, Dodopayments::Models::IntentStatus::OrSymbol)
    end
  end
end

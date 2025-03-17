# typed: strong

module Dodopayments
  module Models
    class IntentStatus < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      SUCCEEDED = :succeeded
      FAILED = :failed
      CANCELLED = :cancelled
      PROCESSING = :processing
      REQUIRES_CUSTOMER_ACTION = :requires_customer_action
      REQUIRES_MERCHANT_ACTION = :requires_merchant_action
      REQUIRES_PAYMENT_METHOD = :requires_payment_method
      REQUIRES_CONFIRMATION = :requires_confirmation
      REQUIRES_CAPTURE = :requires_capture
      PARTIALLY_CAPTURED = :partially_captured
      PARTIALLY_CAPTURED_AND_CAPTURABLE = :partially_captured_and_capturable
    end
  end
end

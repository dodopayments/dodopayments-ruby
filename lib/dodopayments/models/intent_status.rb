# frozen_string_literal: true

module Dodopayments
  module Models
    module IntentStatus
      extend Dodopayments::Internal::Type::Enum

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

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

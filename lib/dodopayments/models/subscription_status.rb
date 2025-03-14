# frozen_string_literal: true

module Dodopayments
  module Models
    # @abstract
    class SubscriptionStatus < Dodopayments::Enum
      PENDING = :pending
      ACTIVE = :active
      ON_HOLD = :on_hold
      PAUSED = :paused
      CANCELLED = :cancelled
      FAILED = :failed
      EXPIRED = :expired

      finalize!
    end
  end
end

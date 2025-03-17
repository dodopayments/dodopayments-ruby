# typed: strong

module Dodopayments
  module Models
    class SubscriptionStatus < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      PENDING = :pending
      ACTIVE = :active
      ON_HOLD = :on_hold
      PAUSED = :paused
      CANCELLED = :cancelled
      FAILED = :failed
      EXPIRED = :expired
    end
  end
end

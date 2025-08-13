# frozen_string_literal: true

module Dodopayments
  module Models
    module SubscriptionStatus
      extend Dodopayments::Internal::Type::Enum

      PENDING = :pending
      ACTIVE = :active
      ON_HOLD = :on_hold
      CANCELLED = :cancelled
      FAILED = :failed
      EXPIRED = :expired

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

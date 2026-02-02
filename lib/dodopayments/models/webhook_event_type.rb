# frozen_string_literal: true

module Dodopayments
  module Models
    # Event types for Dodo events
    module WebhookEventType
      extend Dodopayments::Internal::Type::Enum

      PAYMENT_SUCCEEDED = :"payment.succeeded"
      PAYMENT_FAILED = :"payment.failed"
      PAYMENT_PROCESSING = :"payment.processing"
      PAYMENT_CANCELLED = :"payment.cancelled"
      REFUND_SUCCEEDED = :"refund.succeeded"
      REFUND_FAILED = :"refund.failed"
      DISPUTE_OPENED = :"dispute.opened"
      DISPUTE_EXPIRED = :"dispute.expired"
      DISPUTE_ACCEPTED = :"dispute.accepted"
      DISPUTE_CANCELLED = :"dispute.cancelled"
      DISPUTE_CHALLENGED = :"dispute.challenged"
      DISPUTE_WON = :"dispute.won"
      DISPUTE_LOST = :"dispute.lost"
      SUBSCRIPTION_ACTIVE = :"subscription.active"
      SUBSCRIPTION_RENEWED = :"subscription.renewed"
      SUBSCRIPTION_ON_HOLD = :"subscription.on_hold"
      SUBSCRIPTION_CANCELLED = :"subscription.cancelled"
      SUBSCRIPTION_FAILED = :"subscription.failed"
      SUBSCRIPTION_EXPIRED = :"subscription.expired"
      SUBSCRIPTION_PLAN_CHANGED = :"subscription.plan_changed"
      SUBSCRIPTION_UPDATED = :"subscription.updated"
      LICENSE_KEY_CREATED = :"license_key.created"
      PAYOUT_NOT_INITIATED = :"payout.not_initiated"
      PAYOUT_ON_HOLD = :"payout.on_hold"
      PAYOUT_IN_PROGRESS = :"payout.in_progress"
      PAYOUT_FAILED = :"payout.failed"
      PAYOUT_SUCCESS = :"payout.success"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

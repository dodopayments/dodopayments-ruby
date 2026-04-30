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
      CREDIT_ADDED = :"credit.added"
      CREDIT_DEDUCTED = :"credit.deducted"
      CREDIT_EXPIRED = :"credit.expired"
      CREDIT_ROLLED_OVER = :"credit.rolled_over"
      CREDIT_ROLLOVER_FORFEITED = :"credit.rollover_forfeited"
      CREDIT_OVERAGE_CHARGED = :"credit.overage_charged"
      CREDIT_OVERAGE_RESET = :"credit.overage_reset"
      CREDIT_MANUAL_ADJUSTMENT = :"credit.manual_adjustment"
      CREDIT_BALANCE_LOW = :"credit.balance_low"
      ABANDONED_CHECKOUT_DETECTED = :"abandoned_checkout.detected"
      ABANDONED_CHECKOUT_RECOVERED = :"abandoned_checkout.recovered"
      DUNNING_STARTED = :"dunning.started"
      DUNNING_RECOVERED = :"dunning.recovered"
      ACR_EMAIL = :"acr.email"
      DUNNING_EMAIL = :"dunning.email"
      ENTITLEMENT_GRANT_CREATED = :"entitlement_grant.created"
      ENTITLEMENT_GRANT_DELIVERED = :"entitlement_grant.delivered"
      ENTITLEMENT_GRANT_FAILED = :"entitlement_grant.failed"
      ENTITLEMENT_GRANT_REVOKED = :"entitlement_grant.revoked"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    module UnsafeUnwrapWebhookEvent
      extend Dodopayments::Internal::Type::Union

      discriminator :type

      variant :"abandoned_checkout.detected", -> { Dodopayments::AbandonedCheckoutDetectedWebhookEvent }

      variant :"abandoned_checkout.recovered", -> { Dodopayments::AbandonedCheckoutRecoveredWebhookEvent }

      variant :"credit.added", -> { Dodopayments::CreditAddedWebhookEvent }

      variant :"credit.balance_low", -> { Dodopayments::CreditBalanceLowWebhookEvent }

      variant :"credit.deducted", -> { Dodopayments::CreditDeductedWebhookEvent }

      variant :"credit.expired", -> { Dodopayments::CreditExpiredWebhookEvent }

      variant :"credit.manual_adjustment", -> { Dodopayments::CreditManualAdjustmentWebhookEvent }

      variant :"credit.overage_charged", -> { Dodopayments::CreditOverageChargedWebhookEvent }

      variant :"credit.overage_reset", -> { Dodopayments::CreditOverageResetWebhookEvent }

      variant :"credit.rolled_over", -> { Dodopayments::CreditRolledOverWebhookEvent }

      variant :"credit.rollover_forfeited", -> { Dodopayments::CreditRolloverForfeitedWebhookEvent }

      variant :"dispute.accepted", -> { Dodopayments::DisputeAcceptedWebhookEvent }

      variant :"dispute.cancelled", -> { Dodopayments::DisputeCancelledWebhookEvent }

      variant :"dispute.challenged", -> { Dodopayments::DisputeChallengedWebhookEvent }

      variant :"dispute.expired", -> { Dodopayments::DisputeExpiredWebhookEvent }

      variant :"dispute.lost", -> { Dodopayments::DisputeLostWebhookEvent }

      variant :"dispute.opened", -> { Dodopayments::DisputeOpenedWebhookEvent }

      variant :"dispute.won", -> { Dodopayments::DisputeWonWebhookEvent }

      variant :"dunning.recovered", -> { Dodopayments::DunningRecoveredWebhookEvent }

      variant :"dunning.started", -> { Dodopayments::DunningStartedWebhookEvent }

      variant :"entitlement_grant.created", -> { Dodopayments::EntitlementGrantCreatedWebhookEvent }

      variant :"entitlement_grant.delivered", -> { Dodopayments::EntitlementGrantDeliveredWebhookEvent }

      variant :"entitlement_grant.failed", -> { Dodopayments::EntitlementGrantFailedWebhookEvent }

      variant :"entitlement_grant.revoked", -> { Dodopayments::EntitlementGrantRevokedWebhookEvent }

      variant :"license_key.created", -> { Dodopayments::LicenseKeyCreatedWebhookEvent }

      variant :"payment.cancelled", -> { Dodopayments::PaymentCancelledWebhookEvent }

      variant :"payment.failed", -> { Dodopayments::PaymentFailedWebhookEvent }

      variant :"payment.processing", -> { Dodopayments::PaymentProcessingWebhookEvent }

      variant :"payment.succeeded", -> { Dodopayments::PaymentSucceededWebhookEvent }

      variant :"refund.failed", -> { Dodopayments::RefundFailedWebhookEvent }

      variant :"refund.succeeded", -> { Dodopayments::RefundSucceededWebhookEvent }

      variant :"subscription.active", -> { Dodopayments::SubscriptionActiveWebhookEvent }

      variant :"subscription.cancelled", -> { Dodopayments::SubscriptionCancelledWebhookEvent }

      variant :"subscription.expired", -> { Dodopayments::SubscriptionExpiredWebhookEvent }

      variant :"subscription.failed", -> { Dodopayments::SubscriptionFailedWebhookEvent }

      variant :"subscription.on_hold", -> { Dodopayments::SubscriptionOnHoldWebhookEvent }

      variant :"subscription.plan_changed", -> { Dodopayments::SubscriptionPlanChangedWebhookEvent }

      variant :"subscription.renewed", -> { Dodopayments::SubscriptionRenewedWebhookEvent }

      variant :"subscription.updated", -> { Dodopayments::SubscriptionUpdatedWebhookEvent }

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent, Dodopayments::Models::CreditAddedWebhookEvent, Dodopayments::Models::CreditBalanceLowWebhookEvent, Dodopayments::Models::CreditDeductedWebhookEvent, Dodopayments::Models::CreditExpiredWebhookEvent, Dodopayments::Models::CreditManualAdjustmentWebhookEvent, Dodopayments::Models::CreditOverageChargedWebhookEvent, Dodopayments::Models::CreditOverageResetWebhookEvent, Dodopayments::Models::CreditRolledOverWebhookEvent, Dodopayments::Models::CreditRolloverForfeitedWebhookEvent, Dodopayments::Models::DisputeAcceptedWebhookEvent, Dodopayments::Models::DisputeCancelledWebhookEvent, Dodopayments::Models::DisputeChallengedWebhookEvent, Dodopayments::Models::DisputeExpiredWebhookEvent, Dodopayments::Models::DisputeLostWebhookEvent, Dodopayments::Models::DisputeOpenedWebhookEvent, Dodopayments::Models::DisputeWonWebhookEvent, Dodopayments::Models::DunningRecoveredWebhookEvent, Dodopayments::Models::DunningStartedWebhookEvent, Dodopayments::Models::EntitlementGrantCreatedWebhookEvent, Dodopayments::Models::EntitlementGrantDeliveredWebhookEvent, Dodopayments::Models::EntitlementGrantFailedWebhookEvent, Dodopayments::Models::EntitlementGrantRevokedWebhookEvent, Dodopayments::Models::LicenseKeyCreatedWebhookEvent, Dodopayments::Models::PaymentCancelledWebhookEvent, Dodopayments::Models::PaymentFailedWebhookEvent, Dodopayments::Models::PaymentProcessingWebhookEvent, Dodopayments::Models::PaymentSucceededWebhookEvent, Dodopayments::Models::RefundFailedWebhookEvent, Dodopayments::Models::RefundSucceededWebhookEvent, Dodopayments::Models::SubscriptionActiveWebhookEvent, Dodopayments::Models::SubscriptionCancelledWebhookEvent, Dodopayments::Models::SubscriptionExpiredWebhookEvent, Dodopayments::Models::SubscriptionFailedWebhookEvent, Dodopayments::Models::SubscriptionOnHoldWebhookEvent, Dodopayments::Models::SubscriptionPlanChangedWebhookEvent, Dodopayments::Models::SubscriptionRenewedWebhookEvent, Dodopayments::Models::SubscriptionUpdatedWebhookEvent)]
    end
  end
end

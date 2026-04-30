# frozen_string_literal: true

module Dodopayments
  module Models
    module UnsafeUnwrapWebhookEvent
      extend Dodopayments::Internal::Type::Union

      variant -> { Dodopayments::AbandonedCheckoutDetectedWebhookEvent }

      variant -> { Dodopayments::AbandonedCheckoutRecoveredWebhookEvent }

      variant -> { Dodopayments::CreditAddedWebhookEvent }

      variant -> { Dodopayments::CreditBalanceLowWebhookEvent }

      variant -> { Dodopayments::CreditDeductedWebhookEvent }

      variant -> { Dodopayments::CreditExpiredWebhookEvent }

      variant -> { Dodopayments::CreditManualAdjustmentWebhookEvent }

      variant -> { Dodopayments::CreditOverageChargedWebhookEvent }

      variant -> { Dodopayments::CreditOverageResetWebhookEvent }

      variant -> { Dodopayments::CreditRolledOverWebhookEvent }

      variant -> { Dodopayments::CreditRolloverForfeitedWebhookEvent }

      variant -> { Dodopayments::DisputeAcceptedWebhookEvent }

      variant -> { Dodopayments::DisputeCancelledWebhookEvent }

      variant -> { Dodopayments::DisputeChallengedWebhookEvent }

      variant -> { Dodopayments::DisputeExpiredWebhookEvent }

      variant -> { Dodopayments::DisputeLostWebhookEvent }

      variant -> { Dodopayments::DisputeOpenedWebhookEvent }

      variant -> { Dodopayments::DisputeWonWebhookEvent }

      variant -> { Dodopayments::DunningRecoveredWebhookEvent }

      variant -> { Dodopayments::DunningStartedWebhookEvent }

      variant -> { Dodopayments::EntitlementGrantCreatedWebhookEvent }

      variant -> { Dodopayments::EntitlementGrantDeliveredWebhookEvent }

      variant -> { Dodopayments::EntitlementGrantFailedWebhookEvent }

      variant -> { Dodopayments::EntitlementGrantRevokedWebhookEvent }

      variant -> { Dodopayments::LicenseKeyCreatedWebhookEvent }

      variant -> { Dodopayments::PaymentCancelledWebhookEvent }

      variant -> { Dodopayments::PaymentFailedWebhookEvent }

      variant -> { Dodopayments::PaymentProcessingWebhookEvent }

      variant -> { Dodopayments::PaymentSucceededWebhookEvent }

      variant -> { Dodopayments::RefundFailedWebhookEvent }

      variant -> { Dodopayments::RefundSucceededWebhookEvent }

      variant -> { Dodopayments::SubscriptionActiveWebhookEvent }

      variant -> { Dodopayments::SubscriptionCancelledWebhookEvent }

      variant -> { Dodopayments::SubscriptionExpiredWebhookEvent }

      variant -> { Dodopayments::SubscriptionFailedWebhookEvent }

      variant -> { Dodopayments::SubscriptionOnHoldWebhookEvent }

      variant -> { Dodopayments::SubscriptionPlanChangedWebhookEvent }

      variant -> { Dodopayments::SubscriptionRenewedWebhookEvent }

      variant -> { Dodopayments::SubscriptionUpdatedWebhookEvent }

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent, Dodopayments::Models::CreditAddedWebhookEvent, Dodopayments::Models::CreditBalanceLowWebhookEvent, Dodopayments::Models::CreditDeductedWebhookEvent, Dodopayments::Models::CreditExpiredWebhookEvent, Dodopayments::Models::CreditManualAdjustmentWebhookEvent, Dodopayments::Models::CreditOverageChargedWebhookEvent, Dodopayments::Models::CreditOverageResetWebhookEvent, Dodopayments::Models::CreditRolledOverWebhookEvent, Dodopayments::Models::CreditRolloverForfeitedWebhookEvent, Dodopayments::Models::DisputeAcceptedWebhookEvent, Dodopayments::Models::DisputeCancelledWebhookEvent, Dodopayments::Models::DisputeChallengedWebhookEvent, Dodopayments::Models::DisputeExpiredWebhookEvent, Dodopayments::Models::DisputeLostWebhookEvent, Dodopayments::Models::DisputeOpenedWebhookEvent, Dodopayments::Models::DisputeWonWebhookEvent, Dodopayments::Models::DunningRecoveredWebhookEvent, Dodopayments::Models::DunningStartedWebhookEvent, Dodopayments::Models::EntitlementGrantCreatedWebhookEvent, Dodopayments::Models::EntitlementGrantDeliveredWebhookEvent, Dodopayments::Models::EntitlementGrantFailedWebhookEvent, Dodopayments::Models::EntitlementGrantRevokedWebhookEvent, Dodopayments::Models::LicenseKeyCreatedWebhookEvent, Dodopayments::Models::PaymentCancelledWebhookEvent, Dodopayments::Models::PaymentFailedWebhookEvent, Dodopayments::Models::PaymentProcessingWebhookEvent, Dodopayments::Models::PaymentSucceededWebhookEvent, Dodopayments::Models::RefundFailedWebhookEvent, Dodopayments::Models::RefundSucceededWebhookEvent, Dodopayments::Models::SubscriptionActiveWebhookEvent, Dodopayments::Models::SubscriptionCancelledWebhookEvent, Dodopayments::Models::SubscriptionExpiredWebhookEvent, Dodopayments::Models::SubscriptionFailedWebhookEvent, Dodopayments::Models::SubscriptionOnHoldWebhookEvent, Dodopayments::Models::SubscriptionPlanChangedWebhookEvent, Dodopayments::Models::SubscriptionRenewedWebhookEvent, Dodopayments::Models::SubscriptionUpdatedWebhookEvent)]
    end
  end
end

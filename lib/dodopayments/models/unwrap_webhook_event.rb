# frozen_string_literal: true

module Dodopayments
  module Models
    module UnwrapWebhookEvent
      extend Dodopayments::Internal::Type::Union

      variant -> { Dodopayments::DisputeAcceptedWebhookEvent }

      variant -> { Dodopayments::DisputeCancelledWebhookEvent }

      variant -> { Dodopayments::DisputeChallengedWebhookEvent }

      variant -> { Dodopayments::DisputeExpiredWebhookEvent }

      variant -> { Dodopayments::DisputeLostWebhookEvent }

      variant -> { Dodopayments::DisputeOpenedWebhookEvent }

      variant -> { Dodopayments::DisputeWonWebhookEvent }

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

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::DisputeAcceptedWebhookEvent, Dodopayments::Models::DisputeCancelledWebhookEvent, Dodopayments::Models::DisputeChallengedWebhookEvent, Dodopayments::Models::DisputeExpiredWebhookEvent, Dodopayments::Models::DisputeLostWebhookEvent, Dodopayments::Models::DisputeOpenedWebhookEvent, Dodopayments::Models::DisputeWonWebhookEvent, Dodopayments::Models::LicenseKeyCreatedWebhookEvent, Dodopayments::Models::PaymentCancelledWebhookEvent, Dodopayments::Models::PaymentFailedWebhookEvent, Dodopayments::Models::PaymentProcessingWebhookEvent, Dodopayments::Models::PaymentSucceededWebhookEvent, Dodopayments::Models::RefundFailedWebhookEvent, Dodopayments::Models::RefundSucceededWebhookEvent, Dodopayments::Models::SubscriptionActiveWebhookEvent, Dodopayments::Models::SubscriptionCancelledWebhookEvent, Dodopayments::Models::SubscriptionExpiredWebhookEvent, Dodopayments::Models::SubscriptionFailedWebhookEvent, Dodopayments::Models::SubscriptionOnHoldWebhookEvent, Dodopayments::Models::SubscriptionPlanChangedWebhookEvent, Dodopayments::Models::SubscriptionRenewedWebhookEvent)]
    end
  end
end

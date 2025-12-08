# typed: strong

module Dodopayments
  module Models
    module UnsafeUnwrapWebhookEvent
      extend Dodopayments::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Dodopayments::DisputeAcceptedWebhookEvent,
            Dodopayments::DisputeCancelledWebhookEvent,
            Dodopayments::DisputeChallengedWebhookEvent,
            Dodopayments::DisputeExpiredWebhookEvent,
            Dodopayments::DisputeLostWebhookEvent,
            Dodopayments::DisputeOpenedWebhookEvent,
            Dodopayments::DisputeWonWebhookEvent,
            Dodopayments::LicenseKeyCreatedWebhookEvent,
            Dodopayments::PaymentCancelledWebhookEvent,
            Dodopayments::PaymentFailedWebhookEvent,
            Dodopayments::PaymentProcessingWebhookEvent,
            Dodopayments::PaymentSucceededWebhookEvent,
            Dodopayments::RefundFailedWebhookEvent,
            Dodopayments::RefundSucceededWebhookEvent,
            Dodopayments::SubscriptionActiveWebhookEvent,
            Dodopayments::SubscriptionCancelledWebhookEvent,
            Dodopayments::SubscriptionExpiredWebhookEvent,
            Dodopayments::SubscriptionFailedWebhookEvent,
            Dodopayments::SubscriptionOnHoldWebhookEvent,
            Dodopayments::SubscriptionPlanChangedWebhookEvent,
            Dodopayments::SubscriptionRenewedWebhookEvent,
            Dodopayments::SubscriptionUpdatedWebhookEvent
          )
        end

      sig do
        override.returns(
          T::Array[Dodopayments::UnsafeUnwrapWebhookEvent::Variants]
        )
      end
      def self.variants
      end
    end
  end
end

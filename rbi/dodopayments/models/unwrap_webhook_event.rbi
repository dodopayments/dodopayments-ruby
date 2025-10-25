# typed: strong

module Dodopayments
  module Models
    module UnwrapWebhookEvent
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
            Dodopayments::SubscriptionRenewedWebhookEvent
          )
        end

      sig do
        override.returns(T::Array[Dodopayments::UnwrapWebhookEvent::Variants])
      end
      def self.variants
      end
    end
  end
end

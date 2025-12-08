# typed: strong

module Dodopayments
  module Models
    # Event types for Dodo events
    module WebhookEventType
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::WebhookEventType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PAYMENT_SUCCEEDED =
        T.let(
          :"payment.succeeded",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      PAYMENT_FAILED =
        T.let(:"payment.failed", Dodopayments::WebhookEventType::TaggedSymbol)
      PAYMENT_PROCESSING =
        T.let(
          :"payment.processing",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      PAYMENT_CANCELLED =
        T.let(
          :"payment.cancelled",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      REFUND_SUCCEEDED =
        T.let(:"refund.succeeded", Dodopayments::WebhookEventType::TaggedSymbol)
      REFUND_FAILED =
        T.let(:"refund.failed", Dodopayments::WebhookEventType::TaggedSymbol)
      DISPUTE_OPENED =
        T.let(:"dispute.opened", Dodopayments::WebhookEventType::TaggedSymbol)
      DISPUTE_EXPIRED =
        T.let(:"dispute.expired", Dodopayments::WebhookEventType::TaggedSymbol)
      DISPUTE_ACCEPTED =
        T.let(:"dispute.accepted", Dodopayments::WebhookEventType::TaggedSymbol)
      DISPUTE_CANCELLED =
        T.let(
          :"dispute.cancelled",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      DISPUTE_CHALLENGED =
        T.let(
          :"dispute.challenged",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      DISPUTE_WON =
        T.let(:"dispute.won", Dodopayments::WebhookEventType::TaggedSymbol)
      DISPUTE_LOST =
        T.let(:"dispute.lost", Dodopayments::WebhookEventType::TaggedSymbol)
      SUBSCRIPTION_ACTIVE =
        T.let(
          :"subscription.active",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      SUBSCRIPTION_RENEWED =
        T.let(
          :"subscription.renewed",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      SUBSCRIPTION_ON_HOLD =
        T.let(
          :"subscription.on_hold",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      SUBSCRIPTION_CANCELLED =
        T.let(
          :"subscription.cancelled",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      SUBSCRIPTION_FAILED =
        T.let(
          :"subscription.failed",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      SUBSCRIPTION_EXPIRED =
        T.let(
          :"subscription.expired",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      SUBSCRIPTION_PLAN_CHANGED =
        T.let(
          :"subscription.plan_changed",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      SUBSCRIPTION_UPDATED =
        T.let(
          :"subscription.updated",
          Dodopayments::WebhookEventType::TaggedSymbol
        )
      LICENSE_KEY_CREATED =
        T.let(
          :"license_key.created",
          Dodopayments::WebhookEventType::TaggedSymbol
        )

      sig do
        override.returns(T::Array[Dodopayments::WebhookEventType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

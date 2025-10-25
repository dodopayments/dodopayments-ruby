# typed: strong

module Dodopayments
  module Resources
    class Webhooks
      sig { returns(Dodopayments::Resources::Webhooks::Headers) }
      attr_reader :headers

      # Create a new webhook
      sig do
        params(
          url: String,
          description: T.nilable(String),
          disabled: T.nilable(T::Boolean),
          filter_types: T::Array[Dodopayments::WebhookEventType::OrSymbol],
          headers: T.nilable(T::Hash[Symbol, String]),
          idempotency_key: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          rate_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::WebhookDetails)
      end
      def create(
        # Url of the webhook
        url:,
        description: nil,
        # Create the webhook in a disabled state.
        #
        # Default is false
        disabled: nil,
        # Filter events to the webhook.
        #
        # Webhook event will only be sent for events in the list.
        filter_types: nil,
        # Custom headers to be passed
        headers: nil,
        # The request's idempotency key
        idempotency_key: nil,
        # Metadata to be passed to the webhook Defaut is {}
        metadata: nil,
        rate_limit: nil,
        request_options: {}
      )
      end

      # Get a webhook by id
      sig do
        params(
          webhook_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::WebhookDetails)
      end
      def retrieve(webhook_id, request_options: {})
      end

      # Patch a webhook by id
      sig do
        params(
          webhook_id: String,
          description: T.nilable(String),
          disabled: T.nilable(T::Boolean),
          filter_types:
            T.nilable(T::Array[Dodopayments::WebhookEventType::OrSymbol]),
          metadata: T.nilable(T::Hash[Symbol, String]),
          rate_limit: T.nilable(Integer),
          url: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::WebhookDetails)
      end
      def update(
        webhook_id,
        # Description of the webhook
        description: nil,
        # To Disable the endpoint, set it to true.
        disabled: nil,
        # Filter events to the endpoint.
        #
        # Webhook event will only be sent for events in the list.
        filter_types: nil,
        # Metadata
        metadata: nil,
        # Rate limit
        rate_limit: nil,
        # Url endpoint
        url: nil,
        request_options: {}
      )
      end

      # List all webhooks
      sig do
        params(
          iterator: T.nilable(String),
          limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::CursorPagePagination[
            Dodopayments::WebhookDetails
          ]
        )
      end
      def list(
        # The iterator returned from a prior invocation
        iterator: nil,
        # Limit the number of returned items
        limit: nil,
        request_options: {}
      )
      end

      # Delete a webhook by id
      sig do
        params(
          webhook_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(webhook_id, request_options: {})
      end

      # Get webhook secret by id
      sig do
        params(
          webhook_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::WebhookRetrieveSecretResponse)
      end
      def retrieve_secret(webhook_id, request_options: {})
      end

      sig do
        params(payload: String).returns(
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
        )
      end
      def unsafe_unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      sig do
        params(payload: String).returns(
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
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

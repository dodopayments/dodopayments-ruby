# typed: strong

module Dodopayments
  module Resources
    class YourWebhookURL
      sig do
        params(
          business_id: String,
          data:
            T.any(
              Dodopayments::WebhookPayload::Data::Payment::OrHash,
              Dodopayments::WebhookPayload::Data::Subscription::OrHash,
              Dodopayments::WebhookPayload::Data::Refund::OrHash,
              Dodopayments::WebhookPayload::Data::Dispute::OrHash,
              Dodopayments::WebhookPayload::Data::LicenseKey::OrHash
            ),
          timestamp: Time,
          type: Dodopayments::WebhookEventType::OrSymbol,
          webhook_id: String,
          webhook_signature: String,
          webhook_timestamp: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def create(
        # Body param:
        business_id:,
        # Body param: The latest data at the time of delivery attempt
        data:,
        # Body param: The timestamp of when the event occurred (not necessarily the same
        # of when it was delivered)
        timestamp:,
        # Body param: Event types for Dodo events
        type:,
        # Header param: Unique identifier for the webhook
        webhook_id:,
        # Header param: Signature of the Webhook
        webhook_signature:,
        # Header param: Unix timestamp when the webhook was sent
        webhook_timestamp:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

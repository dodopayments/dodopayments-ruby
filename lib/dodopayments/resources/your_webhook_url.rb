# frozen_string_literal: true

module Dodopayments
  module Resources
    class YourWebhookURL
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::YourWebhookURLCreateParams} for more details.
      #
      # @overload create(business_id:, data:, timestamp:, type:, webhook_id:, webhook_signature:, webhook_timestamp:, request_options: {})
      #
      # @param business_id [String] Body param:
      #
      # @param data [Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey] Body param: The latest data at the time of delivery attempt
      #
      # @param timestamp [Time] Body param: The timestamp of when the event occurred (not necessarily the same o
      #
      # @param type [Symbol, Dodopayments::Models::WebhookEventType] Body param: Event types for Dodo events
      #
      # @param webhook_id [String] Header param: Unique identifier for the webhook
      #
      # @param webhook_signature [String] Header param: Signature of the Webhook
      #
      # @param webhook_timestamp [String] Header param: Unix timestamp when the webhook was sent
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::YourWebhookURLCreateParams
      def create(params)
        parsed, options = Dodopayments::YourWebhookURLCreateParams.dump_request(params)
        header_params =
          {
            webhook_id: "webhook-id",
            webhook_signature: "webhook-signature",
            webhook_timestamp: "webhook-timestamp"
          }
        @client.request(
          method: :post,
          path: "your-webhook-url",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

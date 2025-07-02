# typed: strong

module Dodopayments
  module Resources
    class WebhookEvents
      sig do
        params(
          webhook_event_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::WebhookEvent)
      end
      def retrieve(webhook_event_id, request_options: {})
      end

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          limit: Integer,
          object_id_: String,
          page_number: Integer,
          page_size: Integer,
          webhook_event_id: String,
          webhook_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::WebhookEvent
          ]
        )
      end
      def list(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Min : 1, Max : 100, default 10
        limit: nil,
        # Get events history of a specific object like payment/subscription/refund/dispute
        object_id_: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by webhook event id
        webhook_event_id: nil,
        # Filter by webhook destination
        webhook_id: nil,
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

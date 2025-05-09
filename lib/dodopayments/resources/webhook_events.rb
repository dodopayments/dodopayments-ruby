# frozen_string_literal: true

module Dodopayments
  module Resources
    class WebhookEvents
      # @overload retrieve(webhook_event_id, request_options: {})
      #
      # @param webhook_event_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::WebhookEvent]
      #
      # @see Dodopayments::Models::WebhookEventRetrieveParams
      def retrieve(webhook_event_id, params = {})
        @client.request(
          method: :get,
          path: ["webhook_events/%1$s", webhook_event_id],
          model: Dodopayments::Models::WebhookEvent,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::WebhookEventListParams} for more details.
      #
      # @overload list(created_at_gte: nil, created_at_lte: nil, limit: nil, object_id_: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param created_at_gte [Time, nil] Get events after this created time
      #
      # @param created_at_lte [Time, nil] Get events created before this time
      #
      # @param limit [Integer, nil] Min : 1, Max : 100, default 10
      #
      # @param object_id_ [String, nil] Get events history of a specific object like payment/subscription/refund/dispute
      # ...
      #
      # @param page_number [Integer, nil] Page number default is 0
      #
      # @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::WebhookEvent>]
      #
      # @see Dodopayments::Models::WebhookEventListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::WebhookEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhook_events",
          query: parsed.transform_keys(object_id_: "object_id"),
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::WebhookEvent,
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

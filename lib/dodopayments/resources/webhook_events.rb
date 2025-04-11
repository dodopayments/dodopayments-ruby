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

      # @overload list(created_at_gte: nil, created_at_lte: nil, limit: nil, object_id_: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param created_at_gte [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param limit [Integer, nil]
      # @param object_id_ [String, nil]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
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
          query: parsed,
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

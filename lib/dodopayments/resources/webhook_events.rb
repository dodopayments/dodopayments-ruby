# frozen_string_literal: true

module Dodopayments
  module Resources
    class WebhookEvents
      # @param webhook_event_id [String]
      #
      # @param params [Dodopayments::Models::WebhookEventRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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

      # @param params [Dodopayments::Models::WebhookEventListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time, nil] :created_at_gte Get events after this created time
      #
      #   @option params [Time, nil] :created_at_lte Get events created before this time
      #
      #   @option params [Integer, nil] :limit Min : 1, Max : 100, default 10
      #
      #   @option params [String, nil] :object_id_ Get events history of a specific object like payment/subscription/refund/dispute
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::WebhookEvent>]
      #
      # @see Dodopayments::Models::WebhookEventListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::WebhookEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhook_events",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
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

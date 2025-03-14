# frozen_string_literal: true

module DodoPayments
  module Resources
    class WebhookEvents
      # @param webhook_event_id [String]
      #
      # @param params [DodoPayments::Models::WebhookEventRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::WebhookEvent]
      def retrieve(webhook_event_id, params = {})
        @client.request(
          method: :get,
          path: ["webhook_events/%0s", webhook_event_id],
          model: DodoPayments::Models::WebhookEvent,
          options: params[:request_options]
        )
      end

      # @param params [DodoPayments::Models::WebhookEventListParams, Hash{Symbol=>Object}] .
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
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::WebhookEvent>]
      def list(params = {})
        parsed, options = DodoPayments::Models::WebhookEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhook_events",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::WebhookEvent,
          options: options
        )
      end

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

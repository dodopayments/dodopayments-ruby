# frozen_string_literal: true

module Dodopayments
  module Resources
    class Webhooks
      # @return [Dodopayments::Resources::Webhooks::Headers]
      attr_reader :headers

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::WebhookCreateParams} for more details.
      #
      # Create a new webhook
      #
      # @overload create(url:, description: nil, disabled: nil, filter_types: nil, headers: nil, idempotency_key: nil, metadata: nil, rate_limit: nil, request_options: {})
      #
      # @param url [String] Url of the webhook
      #
      # @param description [String, nil]
      #
      # @param disabled [Boolean, nil] Create the webhook in a disabled state.
      #
      # @param filter_types [Array<Symbol, Dodopayments::Models::WebhookEventType>] Filter events to the webhook.
      #
      # @param headers [Hash{Symbol=>String}, nil] Custom headers to be passed
      #
      # @param idempotency_key [String, nil] The request's idempotency key
      #
      # @param metadata [Hash{Symbol=>String}, nil] Metadata to be passed to the webhook
      #
      # @param rate_limit [Integer, nil]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::WebhookCreateResponse]
      #
      # @see Dodopayments::Models::WebhookCreateParams
      def create(params)
        parsed, options = Dodopayments::WebhookCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks",
          body: parsed,
          model: Dodopayments::Models::WebhookCreateResponse,
          options: options
        )
      end

      # Get a webhook by id
      #
      # @overload retrieve(webhook_id, request_options: {})
      #
      # @param webhook_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::WebhookRetrieveResponse]
      #
      # @see Dodopayments::Models::WebhookRetrieveParams
      def retrieve(webhook_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/%1$s", webhook_id],
          model: Dodopayments::Models::WebhookRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::WebhookUpdateParams} for more details.
      #
      # Patch a webhook by id
      #
      # @overload update(webhook_id, description: nil, disabled: nil, filter_types: nil, metadata: nil, rate_limit: nil, url: nil, request_options: {})
      #
      # @param webhook_id [String]
      #
      # @param description [String, nil] Description of the webhook
      #
      # @param disabled [Boolean, nil] To Disable the endpoint, set it to true.
      #
      # @param filter_types [Array<Symbol, Dodopayments::Models::WebhookEventType>, nil] Filter events to the endpoint.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Metadata
      #
      # @param rate_limit [Integer, nil] Rate limit
      #
      # @param url [String, nil] Url endpoint
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::WebhookUpdateResponse]
      #
      # @see Dodopayments::Models::WebhookUpdateParams
      def update(webhook_id, params = {})
        parsed, options = Dodopayments::WebhookUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["webhooks/%1$s", webhook_id],
          body: parsed,
          model: Dodopayments::Models::WebhookUpdateResponse,
          options: options
        )
      end

      # List all webhooks
      #
      # @overload list(iterator: nil, limit: nil, request_options: {})
      #
      # @param iterator [String, nil] The iterator returned from a prior invocation
      #
      # @param limit [Integer, nil] Limit the number of returned items
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::CursorPagePagination<Dodopayments::Models::WebhookListResponse>]
      #
      # @see Dodopayments::Models::WebhookListParams
      def list(params = {})
        parsed, options = Dodopayments::WebhookListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhooks",
          query: parsed,
          page: Dodopayments::Internal::CursorPagePagination,
          model: Dodopayments::Models::WebhookListResponse,
          options: options
        )
      end

      # Delete a webhook by id
      #
      # @overload delete(webhook_id, request_options: {})
      #
      # @param webhook_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::WebhookDeleteParams
      def delete(webhook_id, params = {})
        @client.request(
          method: :delete,
          path: ["webhooks/%1$s", webhook_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get webhook secret by id
      #
      # @overload retrieve_secret(webhook_id, request_options: {})
      #
      # @param webhook_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::WebhookRetrieveSecretResponse]
      #
      # @see Dodopayments::Models::WebhookRetrieveSecretParams
      def retrieve_secret(webhook_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/%1$s/secret", webhook_id],
          model: Dodopayments::Models::WebhookRetrieveSecretResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @headers = Dodopayments::Resources::Webhooks::Headers.new(client: client)
      end
    end
  end
end

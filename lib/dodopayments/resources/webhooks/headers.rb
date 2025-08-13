# frozen_string_literal: true

module Dodopayments
  module Resources
    class Webhooks
      class Headers
        # Get a webhook by id
        #
        # @overload retrieve(webhook_id, request_options: {})
        #
        # @param webhook_id [String]
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Webhooks::HeaderRetrieveResponse]
        #
        # @see Dodopayments::Models::Webhooks::HeaderRetrieveParams
        def retrieve(webhook_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks/%1$s/headers", webhook_id],
            model: Dodopayments::Models::Webhooks::HeaderRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Patch a webhook by id
        #
        # @overload update(webhook_id, headers:, request_options: {})
        #
        # @param webhook_id [String]
        #
        # @param headers [Hash{Symbol=>String}] Object of header-value pair to update or add
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::Webhooks::HeaderUpdateParams
        def update(webhook_id, params)
          parsed, options = Dodopayments::Webhooks::HeaderUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["webhooks/%1$s/headers", webhook_id],
            body: parsed,
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
end

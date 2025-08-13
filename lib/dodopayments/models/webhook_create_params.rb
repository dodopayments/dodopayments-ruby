# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Webhooks#create
    class WebhookCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute url
      #   Url of the webhook
      #
      #   @return [String]
      required :url, String

      # @!attribute description
      #   Filter events to the webhook.
      #
      #   Webhook event will only be sent for events in the list.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute disabled
      #   Create the webhook in a disabled state.
      #
      #   Default is false
      #
      #   @return [Boolean, nil]
      optional :disabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute filter_types
      #
      #   @return [Array<Symbol, Dodopayments::Models::WebhookEventType>, nil]
      optional :filter_types,
               -> {
                 Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::WebhookEventType]
               }

      # @!attribute headers
      #   Custom headers to be passed
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :headers, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute idempotency_key
      #   The request's idempotency key
      #
      #   @return [String, nil]
      optional :idempotency_key, String, nil?: true

      # @!attribute metadata
      #   Metadata to be passed to the webhook Defaut is {}
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute rate_limit
      #
      #   @return [Integer, nil]
      optional :rate_limit, Integer, nil?: true

      # @!method initialize(url:, description: nil, disabled: nil, filter_types: nil, headers: nil, idempotency_key: nil, metadata: nil, rate_limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::WebhookCreateParams} for more details.
      #
      #   @param url [String] Url of the webhook
      #
      #   @param description [String, nil] Filter events to the webhook.
      #
      #   @param disabled [Boolean, nil] Create the webhook in a disabled state.
      #
      #   @param filter_types [Array<Symbol, Dodopayments::Models::WebhookEventType>]
      #
      #   @param headers [Hash{Symbol=>String}, nil] Custom headers to be passed
      #
      #   @param idempotency_key [String, nil] The request's idempotency key
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Metadata to be passed to the webhook
      #
      #   @param rate_limit [Integer, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

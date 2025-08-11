# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Webhooks#update
    class WebhookUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute description
      #   Description of the webhook
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute disabled
      #   To Disable the endpoint, set it to true.
      #
      #   @return [Boolean, nil]
      optional :disabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute filter_types
      #   Filter events to the endpoint.
      #
      #   Webhook event will only be sent for events in the list.
      #
      #   @return [Array<Symbol, Dodopayments::Models::WebhookEventType>, nil]
      optional :filter_types,
               -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::WebhookEventType] },
               nil?: true

      # @!attribute metadata
      #   Metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute rate_limit
      #   Rate limit
      #
      #   @return [Integer, nil]
      optional :rate_limit, Integer, nil?: true

      # @!attribute url
      #   Url endpoint
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!method initialize(description: nil, disabled: nil, filter_types: nil, metadata: nil, rate_limit: nil, url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::WebhookUpdateParams} for more details.
      #
      #   @param description [String, nil] Description of the webhook
      #
      #   @param disabled [Boolean, nil] To Disable the endpoint, set it to true.
      #
      #   @param filter_types [Array<Symbol, Dodopayments::Models::WebhookEventType>, nil] Filter events to the endpoint.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Metadata
      #
      #   @param rate_limit [Integer, nil] Rate limit
      #
      #   @param url [String, nil] Url endpoint
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

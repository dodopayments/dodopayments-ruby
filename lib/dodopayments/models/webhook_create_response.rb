# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Webhooks#create
    class WebhookCreateResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   The webhook's ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Created at timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute description
      #   An example webhook name.
      #
      #   @return [String]
      required :description, String

      # @!attribute metadata
      #   Metadata of the webhook
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute updated_at
      #   Updated at timestamp
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute url
      #   Url endpoint of the webhook
      #
      #   @return [String]
      required :url, String

      # @!attribute disabled
      #   Status of the webhook.
      #
      #   If true, events are not sent
      #
      #   @return [Boolean, nil]
      optional :disabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute filter_types
      #   Filter events to the webhook.
      #
      #   Webhook event will only be sent for events in the list.
      #
      #   @return [Array<String>, nil]
      optional :filter_types, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute rate_limit
      #   Configured rate limit
      #
      #   @return [Integer, nil]
      optional :rate_limit, Integer, nil?: true

      # @!method initialize(id:, created_at:, description:, metadata:, updated_at:, url:, disabled: nil, filter_types: nil, rate_limit: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::WebhookCreateResponse} for more details.
      #
      #   @param id [String] The webhook's ID.
      #
      #   @param created_at [String] Created at timestamp
      #
      #   @param description [String] An example webhook name.
      #
      #   @param metadata [Hash{Symbol=>String}] Metadata of the webhook
      #
      #   @param updated_at [String] Updated at timestamp
      #
      #   @param url [String] Url endpoint of the webhook
      #
      #   @param disabled [Boolean, nil] Status of the webhook.
      #
      #   @param filter_types [Array<String>, nil] Filter events to the webhook.
      #
      #   @param rate_limit [Integer, nil] Configured rate limit
    end
  end
end

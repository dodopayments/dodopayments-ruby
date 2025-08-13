# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::YourWebhookURL#create
    class YourWebhookURLCreateParams < Dodopayments::Models::WebhookPayload
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute webhook_id
      #
      #   @return [String]
      required :webhook_id, String

      # @!attribute webhook_signature
      #
      #   @return [String]
      required :webhook_signature, String

      # @!attribute webhook_timestamp
      #
      #   @return [String]
      required :webhook_timestamp, String

      # @!method initialize(webhook_id:, webhook_signature:, webhook_timestamp:, request_options: {})
      #   @param webhook_id [String]
      #   @param webhook_signature [String]
      #   @param webhook_timestamp [String]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

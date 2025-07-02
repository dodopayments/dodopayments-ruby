# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::WebhookEvents#list
    class WebhookEventListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute created_at_gte
      #   Get events after this created time
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time

      # @!attribute created_at_lte
      #   Get events created before this time
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time

      # @!attribute limit
      #   Min : 1, Max : 100, default 10
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute object_id_
      #   Get events history of a specific object like payment/subscription/refund/dispute
      #
      #   @return [String, nil]
      optional :object_id_, String

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute webhook_event_id
      #   Filter by webhook event id
      #
      #   @return [String, nil]
      optional :webhook_event_id, String

      # @!attribute webhook_id
      #   Filter by webhook destination
      #
      #   @return [String, nil]
      optional :webhook_id, String

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, limit: nil, object_id_: nil, page_number: nil, page_size: nil, webhook_event_id: nil, webhook_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::WebhookEventListParams} for more details.
      #
      #   @param created_at_gte [Time] Get events after this created time
      #
      #   @param created_at_lte [Time] Get events created before this time
      #
      #   @param limit [Integer] Min : 1, Max : 100, default 10
      #
      #   @param object_id_ [String] Get events history of a specific object like payment/subscription/refund/dispute
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param webhook_event_id [String] Filter by webhook event id
      #
      #   @param webhook_id [String] Filter by webhook destination
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

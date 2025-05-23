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
      optional :created_at_gte, Time, nil?: true

      # @!attribute created_at_lte
      #   Get events created before this time
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time, nil?: true

      # @!attribute limit
      #   Min : 1, Max : 100, default 10
      #
      #   @return [Integer, nil]
      optional :limit, Integer, nil?: true

      # @!attribute object_id_
      #   Get events history of a specific object like payment/subscription/refund/dispute
      #
      #   @return [String, nil]
      optional :object_id_, String, nil?: true

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer, nil?: true

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer, nil?: true

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, limit: nil, object_id_: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::WebhookEventListParams} for more details.
      #
      #   @param created_at_gte [Time, nil] Get events after this created time
      #
      #   @param created_at_lte [Time, nil] Get events created before this time
      #
      #   @param limit [Integer, nil] Min : 1, Max : 100, default 10
      #
      #   @param object_id_ [String, nil] Get events history of a specific object like payment/subscription/refund/dispute
      #   ...
      #
      #   @param page_number [Integer, nil] Page number default is 0
      #
      #   @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

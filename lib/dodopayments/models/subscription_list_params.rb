# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#list
    class SubscriptionListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute brand_id
      #   filter by Brand id
      #
      #   @return [String, nil]
      optional :brand_id, String

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

      # @!attribute customer_id
      #   Filter by customer id
      #
      #   @return [String, nil]
      optional :customer_id, String

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

      # @!attribute status
      #   Filter by status
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionListParams::Status, nil]
      optional :status, enum: -> { Dodopayments::SubscriptionListParams::Status }

      # @!method initialize(brand_id: nil, created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #   @param brand_id [String] filter by Brand id
      #
      #   @param created_at_gte [Time] Get events after this created time
      #
      #   @param created_at_lte [Time] Get events created before this time
      #
      #   @param customer_id [String] Filter by customer id
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param status [Symbol, Dodopayments::Models::SubscriptionListParams::Status] Filter by status
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Filter by status
      module Status
        extend Dodopayments::Internal::Type::Enum

        PENDING = :pending
        ACTIVE = :active
        ON_HOLD = :on_hold
        PAUSED = :paused
        CANCELLED = :cancelled
        FAILED = :failed
        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

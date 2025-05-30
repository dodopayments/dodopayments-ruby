# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Refunds#list
    class RefundListParams < Dodopayments::Internal::Type::BaseModel
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

      # @!attribute customer_id
      #   Filter by customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

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

      # @!attribute status
      #   Filter by status
      #
      #   @return [Symbol, Dodopayments::Models::RefundStatus, nil]
      optional :status, enum: -> { Dodopayments::Models::RefundStatus }, nil?: true

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #   @param created_at_gte [Time, nil] Get events after this created time
      #
      #   @param created_at_lte [Time, nil] Get events created before this time
      #
      #   @param customer_id [String, nil] Filter by customer_id
      #
      #   @param page_number [Integer, nil] Page number default is 0
      #
      #   @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      #   @param status [Symbol, Dodopayments::Models::RefundStatus, nil] Filter by status
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

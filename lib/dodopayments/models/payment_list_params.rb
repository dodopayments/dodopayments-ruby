# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#list
    class PaymentListParams < Dodopayments::Internal::Type::BaseModel
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
      #   Filter by customer id
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
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :status, enum: -> { Dodopayments::Models::IntentStatus }, nil?: true

      # @!attribute subscription_id
      #   Filter by subscription id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, status: nil, subscription_id: nil, request_options: {})
      #   @param created_at_gte [Time, nil]
      #   @param created_at_lte [Time, nil]
      #   @param customer_id [String, nil]
      #   @param page_number [Integer, nil]
      #   @param page_size [Integer, nil]
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil]
      #   @param subscription_id [String, nil]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

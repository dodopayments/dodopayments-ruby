# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#list
    class PaymentListParams < Dodopayments::Internal::Type::BaseModel
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

      # @!attribute product_id
      #   Filter by product id
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute status
      #   Filter by status
      #
      #   @return [Symbol, Dodopayments::Models::PaymentListParams::Status, nil]
      optional :status, enum: -> { Dodopayments::PaymentListParams::Status }

      # @!attribute subscription_id
      #   Filter by subscription id
      #
      #   @return [String, nil]
      optional :subscription_id, String

      # @!method initialize(brand_id: nil, created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, subscription_id: nil, request_options: {})
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
      #   @param product_id [String] Filter by product id
      #
      #   @param status [Symbol, Dodopayments::Models::PaymentListParams::Status] Filter by status
      #
      #   @param subscription_id [String] Filter by subscription id
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Filter by status
      module Status
        extend Dodopayments::Internal::Type::Enum

        SUCCEEDED = :succeeded
        FAILED = :failed
        CANCELLED = :cancelled
        PROCESSING = :processing
        REQUIRES_CUSTOMER_ACTION = :requires_customer_action
        REQUIRES_MERCHANT_ACTION = :requires_merchant_action
        REQUIRES_PAYMENT_METHOD = :requires_payment_method
        REQUIRES_CONFIRMATION = :requires_confirmation
        REQUIRES_CAPTURE = :requires_capture
        PARTIALLY_CAPTURED = :partially_captured
        PARTIALLY_CAPTURED_AND_CAPTURABLE = :partially_captured_and_capturable

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

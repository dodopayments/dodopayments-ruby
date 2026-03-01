# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#list
    class PaymentListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute brand_id
      #
      #   @return [String]
      required :brand_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute digital_products_delivered
      #
      #   @return [Boolean]
      required :digital_products_delivered, Dodopayments::Internal::Type::Boolean

      # @!attribute has_license_key
      #
      #   @return [Boolean]
      required :has_license_key, Dodopayments::Internal::Type::Boolean

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute total_amount
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute dispute_status
      #   The most recent dispute status for this payment. None if no disputes exist.
      #
      #   @return [Symbol, Dodopayments::Models::DisputeStatus, nil]
      optional :dispute_status, enum: -> { Dodopayments::DisputeStatus }, nil?: true

      # @!attribute invoice_id
      #   Invoice ID for this payment. Uses India-specific invoice ID if available.
      #
      #   @return [String, nil]
      optional :invoice_id, String, nil?: true

      # @!attribute invoice_url
      #   URL to download the invoice PDF for this payment.
      #
      #   @return [String, nil]
      optional :invoice_url, String, nil?: true

      # @!attribute payment_method
      #
      #   @return [String, nil]
      optional :payment_method, String, nil?: true

      # @!attribute payment_method_type
      #
      #   @return [String, nil]
      optional :payment_method_type, String, nil?: true

      # @!attribute refund_status
      #   Summary of the refund status for this payment. None if no succeeded refunds
      #   exist.
      #
      #   @return [Symbol, Dodopayments::Models::PaymentRefundStatus, nil]
      optional :refund_status, enum: -> { Dodopayments::PaymentRefundStatus }, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :status, enum: -> { Dodopayments::IntentStatus }, nil?: true

      # @!attribute subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!method initialize(brand_id:, created_at:, currency:, customer:, digital_products_delivered:, has_license_key:, metadata:, payment_id:, total_amount:, dispute_status: nil, invoice_id: nil, invoice_url: nil, payment_method: nil, payment_method_type: nil, refund_status: nil, status: nil, subscription_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::PaymentListResponse} for more details.
      #
      #   @param brand_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails]
      #
      #   @param digital_products_delivered [Boolean]
      #
      #   @param has_license_key [Boolean]
      #
      #   @param metadata [Hash{Symbol=>String}]
      #
      #   @param payment_id [String]
      #
      #   @param total_amount [Integer]
      #
      #   @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus, nil] The most recent dispute status for this payment. None if no disputes exist.
      #
      #   @param invoice_id [String, nil] Invoice ID for this payment. Uses India-specific invoice ID if available.
      #
      #   @param invoice_url [String, nil] URL to download the invoice PDF for this payment.
      #
      #   @param payment_method [String, nil]
      #
      #   @param payment_method_type [String, nil]
      #
      #   @param refund_status [Symbol, Dodopayments::Models::PaymentRefundStatus, nil] Summary of the refund status for this payment. None if no succeeded refunds exis
      #
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil]
      #
      #   @param subscription_id [String, nil]
    end
  end
end

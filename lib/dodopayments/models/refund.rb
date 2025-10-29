# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Refunds#create
    class Refund < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The unique identifier of the business issuing the refund.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   The timestamp of when the refund was created in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer
      #   Details about the customer for this refund (from the associated payment)
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute is_partial
      #   If true the refund is a partial refund
      #
      #   @return [Boolean]
      required :is_partial, Dodopayments::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional metadata stored with the refund.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute payment_id
      #   The unique identifier of the payment associated with the refund.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute refund_id
      #   The unique identifier of the refund.
      #
      #   @return [String]
      required :refund_id, String

      # @!attribute status
      #   The current status of the refund.
      #
      #   @return [Symbol, Dodopayments::Models::RefundStatus]
      required :status, enum: -> { Dodopayments::RefundStatus }

      # @!attribute amount
      #   The refunded amount.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute currency
      #   The currency of the refund, represented as an ISO 4217 currency code.
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute reason
      #   The reason provided for the refund, if any. Optional.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(business_id:, created_at:, customer:, is_partial:, metadata:, payment_id:, refund_id:, status:, amount: nil, currency: nil, reason: nil)
      #   @param business_id [String] The unique identifier of the business issuing the refund.
      #
      #   @param created_at [Time] The timestamp of when the refund was created in UTC.
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails] Details about the customer for this refund (from the associated payment)
      #
      #   @param is_partial [Boolean] If true the refund is a partial refund
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata stored with the refund.
      #
      #   @param payment_id [String] The unique identifier of the payment associated with the refund.
      #
      #   @param refund_id [String] The unique identifier of the refund.
      #
      #   @param status [Symbol, Dodopayments::Models::RefundStatus] The current status of the refund.
      #
      #   @param amount [Integer, nil] The refunded amount.
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil] The currency of the refund, represented as an ISO 4217 currency code.
      #
      #   @param reason [String, nil] The reason provided for the refund, if any. Optional.
    end
  end
end

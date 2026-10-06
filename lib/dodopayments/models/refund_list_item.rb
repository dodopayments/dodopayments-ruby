# frozen_string_literal: true

module Dodopayments
  module Models
    class RefundListItem < Dodopayments::Internal::Type::BaseModel
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

      # @!attribute is_partial
      #   If true the refund is a partial refund
      #
      #   @return [Boolean]
      required :is_partial, Dodopayments::Internal::Type::Boolean

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

      # @!attribute network_reference
      #   The reference number that the card network or the bank gives to the refund. The
      #   customer can give this number to their bank to trace the refund. It is null
      #   until the reference is available.
      #
      #   @return [String, nil]
      optional :network_reference, String, nil?: true

      # @!attribute network_reference_type
      #   The kind of `network_reference`: ARN, STAN or RRN.
      #
      #   @return [Symbol, Dodopayments::Models::RefundNetworkReferenceType, nil]
      optional :network_reference_type, enum: -> { Dodopayments::RefundNetworkReferenceType }, nil?: true

      # @!attribute reason
      #   The reason provided for the refund, if any. Optional.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(business_id:, created_at:, is_partial:, payment_id:, refund_id:, status:, amount: nil, currency: nil, network_reference: nil, network_reference_type: nil, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::RefundListItem} for more details.
      #
      #   @param business_id [String] The unique identifier of the business issuing the refund.
      #
      #   @param created_at [Time] The timestamp of when the refund was created in UTC.
      #
      #   @param is_partial [Boolean] If true the refund is a partial refund
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
      #   @param network_reference [String, nil] The reference number that the card network or the bank gives to the refund. The
      #
      #   @param network_reference_type [Symbol, Dodopayments::Models::RefundNetworkReferenceType, nil] The kind of `network_reference`: ARN, STAN or RRN.
      #
      #   @param reason [String, nil] The reason provided for the refund, if any. Optional.
    end
  end
end

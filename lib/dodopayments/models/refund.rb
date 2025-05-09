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
      #
      #   @return [Symbol, Dodopayments::Models::RefundStatus]
      required :status, enum: -> { Dodopayments::Models::RefundStatus }

      # @!attribute amount
      #   The refunded amount.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Models::Currency }, nil?: true

      # @!attribute reason
      #   The reason provided for the refund, if any. Optional.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(business_id:, created_at:, payment_id:, refund_id:, status:, amount: nil, currency: nil, reason: nil)
      #   @param business_id [String] The unique identifier of the business issuing the refund.
      #
      #   @param created_at [Time] The timestamp of when the refund was created in UTC.
      #
      #   @param payment_id [String] The unique identifier of the payment associated with the refund.
      #
      #   @param refund_id [String] The unique identifier of the refund.
      #
      #   @param status [Symbol, Dodopayments::Models::RefundStatus]
      #
      #   @param amount [Integer, nil] The refunded amount.
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil]
      #
      #   @param reason [String, nil] The reason provided for the refund, if any. Optional.
    end
  end
end

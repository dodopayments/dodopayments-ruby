# frozen_string_literal: true

module Dodopayments
  module Models
    class Dispute < Dodopayments::Internal::Type::BaseModel
      # @!attribute amount
      #   The amount involved in the dispute, represented as a string to accommodate
      #   precision.
      #
      #   @return [String]
      required :amount, String

      # @!attribute business_id
      #   The unique identifier of the business involved in the dispute.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   The timestamp of when the dispute was created, in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the disputed amount, represented as an ISO 4217 currency code.
      #
      #   @return [String]
      required :currency, String

      # @!attribute dispute_id
      #   The unique identifier of the dispute.
      #
      #   @return [String]
      required :dispute_id, String

      # @!attribute dispute_stage
      #
      #   @return [Symbol, Dodopayments::DisputeStage]
      required :dispute_stage, enum: -> { Dodopayments::DisputeStage }

      # @!attribute dispute_status
      #
      #   @return [Symbol, Dodopayments::DisputeStatus]
      required :dispute_status, enum: -> { Dodopayments::DisputeStatus }

      # @!attribute payment_id
      #   The unique identifier of the payment associated with the dispute.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute remarks
      #   Remarks
      #
      #   @return [String, nil]
      optional :remarks, String, nil?: true

      # @!method initialize(amount:, business_id:, created_at:, currency:, dispute_id:, dispute_stage:, dispute_status:, payment_id:, remarks: nil)
      #   Some parameter documentations has been truncated, see {Dodopayments::Dispute}
      #   for more details.
      #
      #   @param amount [String] The amount involved in the dispute, represented as a string to accommodate preci
      #
      #   @param business_id [String] The unique identifier of the business involved in the dispute.
      #
      #   @param created_at [Time] The timestamp of when the dispute was created, in UTC.
      #
      #   @param currency [String] The currency of the disputed amount, represented as an ISO 4217 currency code.
      #
      #   @param dispute_id [String] The unique identifier of the dispute.
      #
      #   @param dispute_stage [Symbol, Dodopayments::DisputeStage]
      #
      #   @param dispute_status [Symbol, Dodopayments::DisputeStatus]
      #
      #   @param payment_id [String] The unique identifier of the payment associated with the dispute.
      #
      #   @param remarks [String, nil] Remarks
    end
  end
end

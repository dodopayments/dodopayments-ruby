# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Disputes#retrieve
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
      #   @return [Symbol, Dodopayments::Models::DisputeStage]
      required :dispute_stage, enum: -> { Dodopayments::Models::DisputeStage }

      # @!attribute dispute_status
      #
      #   @return [Symbol, Dodopayments::Models::DisputeStatus]
      required :dispute_status, enum: -> { Dodopayments::Models::DisputeStatus }

      # @!attribute payment_id
      #   The unique identifier of the payment associated with the dispute.
      #
      #   @return [String]
      required :payment_id, String

      # @!parse
      #   # @param amount [String]
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param currency [String]
      #   # @param dispute_id [String]
      #   # @param dispute_stage [Symbol, Dodopayments::Models::DisputeStage]
      #   # @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus]
      #   # @param payment_id [String]
      #   #
      #   def initialize(
      #     amount:,
      #     business_id:,
      #     created_at:,
      #     currency:,
      #     dispute_id:,
      #     dispute_stage:,
      #     dispute_status:,
      #     payment_id:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end

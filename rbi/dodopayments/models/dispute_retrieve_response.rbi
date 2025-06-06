# typed: strong

module Dodopayments
  module Models
    class DisputeRetrieveResponse < Dodopayments::Internal::Type::BaseModel
      # The amount involved in the dispute, represented as a string to accommodate
      # precision.
      sig { returns(String) }
      attr_accessor :amount

      # The unique identifier of the business involved in the dispute.
      sig { returns(String) }
      attr_accessor :business_id

      # The timestamp of when the dispute was created, in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the disputed amount, represented as an ISO 4217 currency code.
      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash)).void
      end
      attr_writer :customer

      # The unique identifier of the dispute.
      sig { returns(String) }
      attr_accessor :dispute_id

      sig { returns(Dodopayments::Models::DisputeStage::TaggedSymbol) }
      attr_accessor :dispute_stage

      sig { returns(Dodopayments::Models::DisputeStatus::TaggedSymbol) }
      attr_accessor :dispute_status

      # The unique identifier of the payment associated with the dispute.
      sig { returns(String) }
      attr_accessor :payment_id

      # Reason for the dispute
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # Remarks
      sig { returns(T.nilable(String)) }
      attr_accessor :remarks

      sig do
        params(
          amount: String,
          business_id: String,
          created_at: Time,
          currency: String,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
          dispute_id: String,
          dispute_stage: Dodopayments::Models::DisputeStage::OrSymbol,
          dispute_status: Dodopayments::Models::DisputeStatus::OrSymbol,
          payment_id: String,
          reason: T.nilable(String),
          remarks: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The amount involved in the dispute, represented as a string to accommodate
        # precision.
        amount:,
        # The unique identifier of the business involved in the dispute.
        business_id:,
        # The timestamp of when the dispute was created, in UTC.
        created_at:,
        # The currency of the disputed amount, represented as an ISO 4217 currency code.
        currency:,
        customer:,
        # The unique identifier of the dispute.
        dispute_id:,
        dispute_stage:,
        dispute_status:,
        # The unique identifier of the payment associated with the dispute.
        payment_id:,
        # Reason for the dispute
        reason: nil,
        # Remarks
        remarks: nil
      ); end
      sig do
        override
          .returns(
            {
              amount: String,
              business_id: String,
              created_at: Time,
              currency: String,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              dispute_id: String,
              dispute_stage: Dodopayments::Models::DisputeStage::TaggedSymbol,
              dispute_status: Dodopayments::Models::DisputeStatus::TaggedSymbol,
              payment_id: String,
              reason: T.nilable(String),
              remarks: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end

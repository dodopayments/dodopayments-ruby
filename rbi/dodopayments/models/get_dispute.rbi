# typed: strong

module Dodopayments
  module Models
    class GetDispute < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::GetDispute, Dodopayments::Internal::AnyHash)
        end

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

      # The customer who filed the dispute
      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      # The unique identifier of the dispute.
      sig { returns(String) }
      attr_accessor :dispute_id

      # The current stage of the dispute process.
      sig { returns(Dodopayments::DisputeStage::TaggedSymbol) }
      attr_accessor :dispute_stage

      # The current status of the dispute.
      sig { returns(Dodopayments::DisputeStatus::TaggedSymbol) }
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
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          dispute_id: String,
          dispute_stage: Dodopayments::DisputeStage::OrSymbol,
          dispute_status: Dodopayments::DisputeStatus::OrSymbol,
          payment_id: String,
          reason: T.nilable(String),
          remarks: T.nilable(String)
        ).returns(T.attached_class)
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
        # The customer who filed the dispute
        customer:,
        # The unique identifier of the dispute.
        dispute_id:,
        # The current stage of the dispute process.
        dispute_stage:,
        # The current status of the dispute.
        dispute_status:,
        # The unique identifier of the payment associated with the dispute.
        payment_id:,
        # Reason for the dispute
        reason: nil,
        # Remarks
        remarks: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            business_id: String,
            created_at: Time,
            currency: String,
            customer: Dodopayments::CustomerLimitedDetails,
            dispute_id: String,
            dispute_stage: Dodopayments::DisputeStage::TaggedSymbol,
            dispute_status: Dodopayments::DisputeStatus::TaggedSymbol,
            payment_id: String,
            reason: T.nilable(String),
            remarks: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

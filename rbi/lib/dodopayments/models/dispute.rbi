# typed: strong

module Dodopayments
  module Models
    class Dispute < Dodopayments::Internal::Type::BaseModel
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

      sig do
        params(
          amount: String,
          business_id: String,
          created_at: Time,
          currency: String,
          dispute_id: String,
          dispute_stage: Dodopayments::Models::DisputeStage::OrSymbol,
          dispute_status: Dodopayments::Models::DisputeStatus::OrSymbol,
          payment_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        business_id:,
        created_at:,
        currency:,
        dispute_id:,
        dispute_stage:,
        dispute_status:,
        payment_id:
      )
      end

      sig do
        override
          .returns(
            {
              amount: String,
              business_id: String,
              created_at: Time,
              currency: String,
              dispute_id: String,
              dispute_stage: Dodopayments::Models::DisputeStage::TaggedSymbol,
              dispute_status: Dodopayments::Models::DisputeStatus::TaggedSymbol,
              payment_id: String
            }
          )
      end
      def to_hash; end
    end
  end
end

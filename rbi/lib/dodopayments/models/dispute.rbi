# typed: strong

module Dodopayments
  module Models
    class Dispute < Dodopayments::Internal::Type::BaseModel
      # The amount involved in the dispute, represented as a string to accommodate
      # precision.
      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      # The unique identifier of the business involved in the dispute.
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # The timestamp of when the dispute was created, in UTC.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The currency of the disputed amount, represented as an ISO 4217 currency code.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The unique identifier of the dispute.
      sig { returns(String) }
      def dispute_id
      end

      sig { params(_: String).returns(String) }
      def dispute_id=(_)
      end

      sig { returns(Dodopayments::Models::DisputeStage::TaggedSymbol) }
      def dispute_stage
      end

      sig do
        params(_: Dodopayments::Models::DisputeStage::TaggedSymbol)
          .returns(Dodopayments::Models::DisputeStage::TaggedSymbol)
      end
      def dispute_stage=(_)
      end

      sig { returns(Dodopayments::Models::DisputeStatus::TaggedSymbol) }
      def dispute_status
      end

      sig do
        params(_: Dodopayments::Models::DisputeStatus::TaggedSymbol)
          .returns(Dodopayments::Models::DisputeStatus::TaggedSymbol)
      end
      def dispute_status=(_)
      end

      # The unique identifier of the payment associated with the dispute.
      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      sig do
        params(
          amount: String,
          business_id: String,
          created_at: Time,
          currency: String,
          dispute_id: String,
          dispute_stage: Dodopayments::Models::DisputeStage::TaggedSymbol,
          dispute_status: Dodopayments::Models::DisputeStatus::TaggedSymbol,
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

# typed: strong

module Dodopayments
  module Models
    class Refund < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Refund, Dodopayments::Internal::AnyHash)
        end

      # The unique identifier of the business issuing the refund.
      sig { returns(String) }
      attr_accessor :business_id

      # The timestamp of when the refund was created in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The unique identifier of the payment associated with the refund.
      sig { returns(String) }
      attr_accessor :payment_id

      # The unique identifier of the refund.
      sig { returns(String) }
      attr_accessor :refund_id

      sig { returns(Dodopayments::RefundStatus::TaggedSymbol) }
      attr_accessor :status

      # The refunded amount.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The reason provided for the refund, if any. Optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          business_id: String,
          created_at: Time,
          payment_id: String,
          refund_id: String,
          status: Dodopayments::RefundStatus::OrSymbol,
          amount: T.nilable(Integer),
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the business issuing the refund.
        business_id:,
        # The timestamp of when the refund was created in UTC.
        created_at:,
        # The unique identifier of the payment associated with the refund.
        payment_id:,
        # The unique identifier of the refund.
        refund_id:,
        status:,
        # The refunded amount.
        amount: nil,
        currency: nil,
        # The reason provided for the refund, if any. Optional.
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            created_at: Time,
            payment_id: String,
            refund_id: String,
            status: Dodopayments::RefundStatus::TaggedSymbol,
            amount: T.nilable(Integer),
            currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

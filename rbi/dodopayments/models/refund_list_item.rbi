# typed: strong

module Dodopayments
  module Models
    class RefundListItem < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::RefundListItem, Dodopayments::Internal::AnyHash)
        end

      # The unique identifier of the business issuing the refund.
      sig { returns(String) }
      attr_accessor :business_id

      # The timestamp of when the refund was created in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # If true the refund is a partial refund
      sig { returns(T::Boolean) }
      attr_accessor :is_partial

      # The unique identifier of the payment associated with the refund.
      sig { returns(String) }
      attr_accessor :payment_id

      # The unique identifier of the refund.
      sig { returns(String) }
      attr_accessor :refund_id

      # The current status of the refund.
      sig { returns(Dodopayments::RefundStatus::TaggedSymbol) }
      attr_accessor :status

      # The refunded amount.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      # The currency of the refund, represented as an ISO 4217 currency code.
      sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The reference number that the card network or the bank gives to the refund. The
      # customer can give this number to their bank to trace the refund. It is null
      # until the reference is available.
      sig { returns(T.nilable(String)) }
      attr_accessor :network_reference

      # The kind of `network_reference`: ARN, STAN or RRN.
      sig do
        returns(
          T.nilable(Dodopayments::RefundNetworkReferenceType::TaggedSymbol)
        )
      end
      attr_accessor :network_reference_type

      # The reason provided for the refund, if any. Optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          business_id: String,
          created_at: Time,
          is_partial: T::Boolean,
          payment_id: String,
          refund_id: String,
          status: Dodopayments::RefundStatus::OrSymbol,
          amount: T.nilable(Integer),
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          network_reference: T.nilable(String),
          network_reference_type:
            T.nilable(Dodopayments::RefundNetworkReferenceType::OrSymbol),
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the business issuing the refund.
        business_id:,
        # The timestamp of when the refund was created in UTC.
        created_at:,
        # If true the refund is a partial refund
        is_partial:,
        # The unique identifier of the payment associated with the refund.
        payment_id:,
        # The unique identifier of the refund.
        refund_id:,
        # The current status of the refund.
        status:,
        # The refunded amount.
        amount: nil,
        # The currency of the refund, represented as an ISO 4217 currency code.
        currency: nil,
        # The reference number that the card network or the bank gives to the refund. The
        # customer can give this number to their bank to trace the refund. It is null
        # until the reference is available.
        network_reference: nil,
        # The kind of `network_reference`: ARN, STAN or RRN.
        network_reference_type: nil,
        # The reason provided for the refund, if any. Optional.
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            created_at: Time,
            is_partial: T::Boolean,
            payment_id: String,
            refund_id: String,
            status: Dodopayments::RefundStatus::TaggedSymbol,
            amount: T.nilable(Integer),
            currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
            network_reference: T.nilable(String),
            network_reference_type:
              T.nilable(Dodopayments::RefundNetworkReferenceType::TaggedSymbol),
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class PaymentListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::PaymentListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :payment_id

      sig { returns(Integer) }
      attr_accessor :total_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_type

      sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          total_amount: Integer,
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        currency:,
        customer:,
        metadata:,
        payment_id:,
        total_amount:,
        payment_method: nil,
        payment_method_type: nil,
        status: nil,
        subscription_id: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            metadata: T::Hash[Symbol, String],
            payment_id: String,
            total_amount: Integer,
            payment_method: T.nilable(String),
            payment_method_type: T.nilable(String),
            status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol),
            subscription_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

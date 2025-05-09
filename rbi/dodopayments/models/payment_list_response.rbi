# typed: strong

module Dodopayments
  module Models
    class PaymentListResponse < Dodopayments::Internal::Type::BaseModel
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Models::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash)).void
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

      sig { returns(T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol)) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          created_at: Time,
          currency: Dodopayments::Models::Currency::OrSymbol,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          total_amount: Integer,
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          status: T.nilable(Dodopayments::Models::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String)
        )
          .returns(T.attached_class)
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
      ); end
      sig do
        override
          .returns(
            {
              created_at: Time,
              currency: Dodopayments::Models::Currency::TaggedSymbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              total_amount: Integer,
              payment_method: T.nilable(String),
              payment_method_type: T.nilable(String),
              status: T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol),
              subscription_id: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end

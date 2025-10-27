# typed: strong

module Dodopayments
  module Models
    class CheckoutSessionStatus < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CheckoutSessionStatus,
            Dodopayments::Internal::AnyHash
          )
        end

      # Id of the checkout session
      sig { returns(String) }
      attr_accessor :id

      # Created at timestamp
      sig { returns(Time) }
      attr_accessor :created_at

      # Customer email: prefers payment's customer, falls back to session
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email

      # Customer name: prefers payment's customer, falls back to session
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Id of the payment created by the checkout sessions.
      #
      # Null if checkout sessions is still at the details collection stage.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_id

      # status of the payment.
      #
      # Null if checkout sessions is still at the details collection stage.
      sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
      attr_accessor :payment_status

      sig do
        params(
          id: String,
          created_at: Time,
          customer_email: T.nilable(String),
          customer_name: T.nilable(String),
          payment_id: T.nilable(String),
          payment_status: T.nilable(Dodopayments::IntentStatus::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Id of the checkout session
        id:,
        # Created at timestamp
        created_at:,
        # Customer email: prefers payment's customer, falls back to session
        customer_email: nil,
        # Customer name: prefers payment's customer, falls back to session
        customer_name: nil,
        # Id of the payment created by the checkout sessions.
        #
        # Null if checkout sessions is still at the details collection stage.
        payment_id: nil,
        # status of the payment.
        #
        # Null if checkout sessions is still at the details collection stage.
        payment_status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            customer_email: T.nilable(String),
            customer_name: T.nilable(String),
            payment_id: T.nilable(String),
            payment_status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol)
          }
        )
      end
      def to_hash
      end
    end
  end
end

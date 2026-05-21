# typed: strong

module Dodopayments
  module Models
    class CheckoutSessionResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CheckoutSessionResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # The ID of the created checkout session
      sig { returns(String) }
      attr_accessor :session_id

      # Checkout url (None when payment_method_id is provided)
      sig { returns(T.nilable(String)) }
      attr_accessor :checkout_url

      # Client secret used to load the Dodo Payments checkout SDK. Returned when
      # `confirm: true` was passed and a PaymentIntent was created at session-creation
      # time. `None` otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      # Underlying payment id when `confirm: true` was passed and a PaymentIntent was
      # created at session-creation time. `None` otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_id

      # Publishable key for the Dodo Payments checkout SDK. Returned when
      # `confirm: true` was passed and a PaymentIntent was created at session-creation
      # time. `None` otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :publishable_key

      sig do
        params(
          session_id: String,
          checkout_url: T.nilable(String),
          client_secret: T.nilable(String),
          payment_id: T.nilable(String),
          publishable_key: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the created checkout session
        session_id:,
        # Checkout url (None when payment_method_id is provided)
        checkout_url: nil,
        # Client secret used to load the Dodo Payments checkout SDK. Returned when
        # `confirm: true` was passed and a PaymentIntent was created at session-creation
        # time. `None` otherwise.
        client_secret: nil,
        # Underlying payment id when `confirm: true` was passed and a PaymentIntent was
        # created at session-creation time. `None` otherwise.
        payment_id: nil,
        # Publishable key for the Dodo Payments checkout SDK. Returned when
        # `confirm: true` was passed and a PaymentIntent was created at session-creation
        # time. `None` otherwise.
        publishable_key: nil
      )
      end

      sig do
        override.returns(
          {
            session_id: String,
            checkout_url: T.nilable(String),
            client_secret: T.nilable(String),
            payment_id: T.nilable(String),
            publishable_key: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

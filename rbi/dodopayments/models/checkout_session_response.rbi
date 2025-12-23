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

      sig do
        params(session_id: String, checkout_url: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # The ID of the created checkout session
        session_id:,
        # Checkout url (None when payment_method_id is provided)
        checkout_url: nil
      )
      end

      sig do
        override.returns(
          { session_id: String, checkout_url: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end

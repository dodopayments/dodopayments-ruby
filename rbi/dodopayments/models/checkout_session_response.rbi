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

      # Checkout url
      sig { returns(String) }
      attr_accessor :checkout_url

      # The ID of the created checkout session
      sig { returns(String) }
      attr_accessor :session_id

      sig do
        params(checkout_url: String, session_id: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Checkout url
        checkout_url:,
        # The ID of the created checkout session
        session_id:
      )
      end

      sig { override.returns({ checkout_url: String, session_id: String }) }
      def to_hash
      end
    end
  end
end

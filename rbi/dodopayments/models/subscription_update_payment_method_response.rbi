# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdatePaymentMethodResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionUpdatePaymentMethodResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_on

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_id

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_link

      sig do
        params(
          client_secret: T.nilable(String),
          expires_on: T.nilable(Time),
          payment_id: T.nilable(String),
          payment_link: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        client_secret: nil,
        expires_on: nil,
        payment_id: nil,
        payment_link: nil
      )
      end

      sig do
        override.returns(
          {
            client_secret: T.nilable(String),
            expires_on: T.nilable(Time),
            payment_id: T.nilable(String),
            payment_link: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

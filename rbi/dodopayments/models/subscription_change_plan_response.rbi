# typed: strong

module Dodopayments
  module Models
    class SubscriptionChangePlanResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionChangePlanResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Client secret for an embedded checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      # When the link stops working.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_on

      # Id of the payment that settles the plan change.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_id

      # Checkout page URL. Give this to the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_link

      # Handles for a hosted checkout page that settles a plan change.
      #
      # The four fields repeat `UpdatePaymentMethodResponse` and a subset of
      # `CreateSubscriptionResponse`. A shared type would rename the generated SDK types
      # for all three routes, so each route keeps its own.
      sig do
        params(
          client_secret: T.nilable(String),
          expires_on: T.nilable(Time),
          payment_id: T.nilable(String),
          payment_link: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Client secret for an embedded checkout.
        client_secret: nil,
        # When the link stops working.
        expires_on: nil,
        # Id of the payment that settles the plan change.
        payment_id: nil,
        # Checkout page URL. Give this to the customer.
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

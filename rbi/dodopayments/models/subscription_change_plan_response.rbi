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

      # The invoice that bills the plan change. Set only for an invoice-led
      # subscription.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

      # Id of the payment that settles the plan change.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_id

      # Checkout page URL. Give this to the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_link

      # The refund of a downgrade with `credit: refund`.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_id

      # Handles for a hosted checkout page that settles a plan change.
      #
      # The four fields repeat `UpdatePaymentMethodResponse` and a subset of
      # `CreateSubscriptionResponse`. A shared type would rename the generated SDK types
      # for all three routes, so each route keeps its own.
      sig do
        params(
          client_secret: T.nilable(String),
          expires_on: T.nilable(Time),
          invoice_id: T.nilable(String),
          payment_id: T.nilable(String),
          payment_link: T.nilable(String),
          refund_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Client secret for an embedded checkout.
        client_secret: nil,
        # When the link stops working.
        expires_on: nil,
        # The invoice that bills the plan change. Set only for an invoice-led
        # subscription.
        invoice_id: nil,
        # Id of the payment that settles the plan change.
        payment_id: nil,
        # Checkout page URL. Give this to the customer.
        payment_link: nil,
        # The refund of a downgrade with `credit: refund`.
        refund_id: nil
      )
      end

      sig do
        override.returns(
          {
            client_secret: T.nilable(String),
            expires_on: T.nilable(Time),
            invoice_id: T.nilable(String),
            payment_id: T.nilable(String),
            payment_link: T.nilable(String),
            refund_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

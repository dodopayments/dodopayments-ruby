# typed: strong

module Dodopayments
  module Models
    class Payment < Dodopayments::Internal::Type::BaseModel
      sig { returns(Dodopayments::Models::BillingAddress) }
      attr_reader :billing

      sig { params(billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash)).void }
      attr_writer :billing

      # Identifier of the business associated with the payment
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the payment was created
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

      # List of disputes associated with this payment
      sig { returns(T::Array[Dodopayments::Models::Dispute]) }
      attr_accessor :disputes

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Unique identifier for the payment
      sig { returns(String) }
      attr_accessor :payment_id

      # List of refunds issued for this payment
      sig { returns(T::Array[Dodopayments::Models::Refund]) }
      attr_accessor :refunds

      # The amount that will be credited to your Dodo balance after currency conversion
      # and processing. Especially relevant for adaptive pricing where the customer's
      # payment currency differs from your settlement currency.
      sig { returns(Integer) }
      attr_accessor :settlement_amount

      sig { returns(Dodopayments::Models::Currency::TaggedSymbol) }
      attr_accessor :settlement_currency

      # Total amount charged to the customer including tax, in smallest currency unit
      # (e.g. cents)
      sig { returns(Integer) }
      attr_accessor :total_amount

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # An error message if the payment failed
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # Checkout URL
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_link

      # Payment method used by customer (e.g. "card", "bank_transfer")
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method

      # Specific type of payment method (e.g. "visa", "mastercard")
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_type

      # List of products purchased in a one-time payment
      sig { returns(T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart])) }
      attr_accessor :product_cart

      # This represents the portion of settlement_amount that corresponds to taxes
      # collected. Especially relevant for adaptive pricing where the tax component must
      # be tracked separately in your Dodo balance.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :settlement_tax

      sig { returns(T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol)) }
      attr_accessor :status

      # Identifier of the subscription if payment is part of a subscription
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      # Amount of tax collected in smallest currency unit (e.g. cents)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :tax

      # Timestamp when the payment was last updated
      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig do
        params(
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash),
          business_id: String,
          created_at: Time,
          currency: Dodopayments::Models::Currency::OrSymbol,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
          disputes: T::Array[T.any(Dodopayments::Models::Dispute, Dodopayments::Internal::AnyHash)],
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          refunds: T::Array[T.any(Dodopayments::Models::Refund, Dodopayments::Internal::AnyHash)],
          settlement_amount: Integer,
          settlement_currency: Dodopayments::Models::Currency::OrSymbol,
          total_amount: Integer,
          discount_id: T.nilable(String),
          error_message: T.nilable(String),
          payment_link: T.nilable(String),
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          product_cart: T.nilable(T::Array[T.any(Dodopayments::Models::Payment::ProductCart, Dodopayments::Internal::AnyHash)]),
          settlement_tax: T.nilable(Integer),
          status: T.nilable(Dodopayments::Models::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String),
          tax: T.nilable(Integer),
          updated_at: T.nilable(Time)
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
        # Identifier of the business associated with the payment
        business_id:,
        # Timestamp when the payment was created
        created_at:,
        currency:,
        customer:,
        # List of disputes associated with this payment
        disputes:,
        metadata:,
        # Unique identifier for the payment
        payment_id:,
        # List of refunds issued for this payment
        refunds:,
        # The amount that will be credited to your Dodo balance after currency conversion
        # and processing. Especially relevant for adaptive pricing where the customer's
        # payment currency differs from your settlement currency.
        settlement_amount:,
        settlement_currency:,
        # Total amount charged to the customer including tax, in smallest currency unit
        # (e.g. cents)
        total_amount:,
        # The discount id if discount is applied
        discount_id: nil,
        # An error message if the payment failed
        error_message: nil,
        # Checkout URL
        payment_link: nil,
        # Payment method used by customer (e.g. "card", "bank_transfer")
        payment_method: nil,
        # Specific type of payment method (e.g. "visa", "mastercard")
        payment_method_type: nil,
        # List of products purchased in a one-time payment
        product_cart: nil,
        # This represents the portion of settlement_amount that corresponds to taxes
        # collected. Especially relevant for adaptive pricing where the tax component must
        # be tracked separately in your Dodo balance.
        settlement_tax: nil,
        status: nil,
        # Identifier of the subscription if payment is part of a subscription
        subscription_id: nil,
        # Amount of tax collected in smallest currency unit (e.g. cents)
        tax: nil,
        # Timestamp when the payment was last updated
        updated_at: nil
      ); end
      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              business_id: String,
              created_at: Time,
              currency: Dodopayments::Models::Currency::TaggedSymbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              disputes: T::Array[Dodopayments::Models::Dispute],
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              refunds: T::Array[Dodopayments::Models::Refund],
              settlement_amount: Integer,
              settlement_currency: Dodopayments::Models::Currency::TaggedSymbol,
              total_amount: Integer,
              discount_id: T.nilable(String),
              error_message: T.nilable(String),
              payment_link: T.nilable(String),
              payment_method: T.nilable(String),
              payment_method_type: T.nilable(String),
              product_cart: T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart]),
              settlement_tax: T.nilable(Integer),
              status: T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol),
              subscription_id: T.nilable(String),
              tax: T.nilable(Integer),
              updated_at: T.nilable(Time)
            }
          )
      end
      def to_hash; end

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Integer) }
        attr_accessor :quantity

        sig { params(product_id: String, quantity: Integer).returns(T.attached_class) }
        def self.new(product_id:, quantity:); end

        sig { override.returns({product_id: String, quantity: Integer}) }
        def to_hash; end
      end
    end
  end
end

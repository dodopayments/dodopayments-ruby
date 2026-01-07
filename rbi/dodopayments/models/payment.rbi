# typed: strong

module Dodopayments
  module Models
    class Payment < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Payment, Dodopayments::Internal::AnyHash)
        end

      # Billing address details for payments
      sig { returns(Dodopayments::BillingAddress) }
      attr_reader :billing

      sig { params(billing: Dodopayments::BillingAddress::OrHash).void }
      attr_writer :billing

      # brand id this payment belongs to
      sig { returns(String) }
      attr_accessor :brand_id

      # Identifier of the business associated with the payment
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the payment was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Currency used for the payment
      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Details about the customer who made the payment
      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      # brand id this payment belongs to
      sig { returns(T::Boolean) }
      attr_accessor :digital_products_delivered

      # List of disputes associated with this payment
      sig { returns(T::Array[Dodopayments::Dispute]) }
      attr_accessor :disputes

      # Additional custom data associated with the payment
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Unique identifier for the payment
      sig { returns(String) }
      attr_accessor :payment_id

      # List of refunds issued for this payment
      sig { returns(T::Array[Dodopayments::Payment::Refund]) }
      attr_accessor :refunds

      # The amount that will be credited to your Dodo balance after currency conversion
      # and processing. Especially relevant for adaptive pricing where the customer's
      # payment currency differs from your settlement currency.
      sig { returns(Integer) }
      attr_accessor :settlement_amount

      # The currency in which the settlement_amount will be credited to your Dodo
      # balance. This may differ from the customer's payment currency in adaptive
      # pricing scenarios.
      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :settlement_currency

      # Total amount charged to the customer including tax, in smallest currency unit
      # (e.g. cents)
      sig { returns(Integer) }
      attr_accessor :total_amount

      # Cardholder name
      sig { returns(T.nilable(String)) }
      attr_accessor :card_holder_name

      # ISO2 country code of the card
      sig { returns(T.nilable(Dodopayments::CountryCode::TaggedSymbol)) }
      attr_accessor :card_issuing_country

      # The last four digits of the card
      sig { returns(T.nilable(String)) }
      attr_accessor :card_last_four

      # Card network like VISA, MASTERCARD etc.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_network

      # The type of card DEBIT or CREDIT
      sig { returns(T.nilable(String)) }
      attr_accessor :card_type

      # If payment is made using a checkout session, this field is set to the id of the
      # session.
      sig { returns(T.nilable(String)) }
      attr_accessor :checkout_session_id

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # An error code if the payment failed
      sig { returns(T.nilable(String)) }
      attr_accessor :error_code

      # An error message if the payment failed
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # Invoice ID for this payment. Uses India-specific invoice ID if available.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

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
      sig { returns(T.nilable(T::Array[Dodopayments::Payment::ProductCart])) }
      attr_accessor :product_cart

      # This represents the portion of settlement_amount that corresponds to taxes
      # collected. Especially relevant for adaptive pricing where the tax component must
      # be tracked separately in your Dodo balance.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :settlement_tax

      # Current status of the payment intent
      sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
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
          billing: Dodopayments::BillingAddress::OrHash,
          brand_id: String,
          business_id: String,
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          digital_products_delivered: T::Boolean,
          disputes: T::Array[Dodopayments::Dispute::OrHash],
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          refunds: T::Array[Dodopayments::Payment::Refund::OrHash],
          settlement_amount: Integer,
          settlement_currency: Dodopayments::Currency::OrSymbol,
          total_amount: Integer,
          card_holder_name: T.nilable(String),
          card_issuing_country: T.nilable(Dodopayments::CountryCode::OrSymbol),
          card_last_four: T.nilable(String),
          card_network: T.nilable(String),
          card_type: T.nilable(String),
          checkout_session_id: T.nilable(String),
          discount_id: T.nilable(String),
          error_code: T.nilable(String),
          error_message: T.nilable(String),
          invoice_id: T.nilable(String),
          payment_link: T.nilable(String),
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          product_cart:
            T.nilable(T::Array[Dodopayments::Payment::ProductCart::OrHash]),
          settlement_tax: T.nilable(Integer),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String),
          tax: T.nilable(Integer),
          updated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Billing address details for payments
        billing:,
        # brand id this payment belongs to
        brand_id:,
        # Identifier of the business associated with the payment
        business_id:,
        # Timestamp when the payment was created
        created_at:,
        # Currency used for the payment
        currency:,
        # Details about the customer who made the payment
        customer:,
        # brand id this payment belongs to
        digital_products_delivered:,
        # List of disputes associated with this payment
        disputes:,
        # Additional custom data associated with the payment
        metadata:,
        # Unique identifier for the payment
        payment_id:,
        # List of refunds issued for this payment
        refunds:,
        # The amount that will be credited to your Dodo balance after currency conversion
        # and processing. Especially relevant for adaptive pricing where the customer's
        # payment currency differs from your settlement currency.
        settlement_amount:,
        # The currency in which the settlement_amount will be credited to your Dodo
        # balance. This may differ from the customer's payment currency in adaptive
        # pricing scenarios.
        settlement_currency:,
        # Total amount charged to the customer including tax, in smallest currency unit
        # (e.g. cents)
        total_amount:,
        # Cardholder name
        card_holder_name: nil,
        # ISO2 country code of the card
        card_issuing_country: nil,
        # The last four digits of the card
        card_last_four: nil,
        # Card network like VISA, MASTERCARD etc.
        card_network: nil,
        # The type of card DEBIT or CREDIT
        card_type: nil,
        # If payment is made using a checkout session, this field is set to the id of the
        # session.
        checkout_session_id: nil,
        # The discount id if discount is applied
        discount_id: nil,
        # An error code if the payment failed
        error_code: nil,
        # An error message if the payment failed
        error_message: nil,
        # Invoice ID for this payment. Uses India-specific invoice ID if available.
        invoice_id: nil,
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
        # Current status of the payment intent
        status: nil,
        # Identifier of the subscription if payment is part of a subscription
        subscription_id: nil,
        # Amount of tax collected in smallest currency unit (e.g. cents)
        tax: nil,
        # Timestamp when the payment was last updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            billing: Dodopayments::BillingAddress,
            brand_id: String,
            business_id: String,
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            digital_products_delivered: T::Boolean,
            disputes: T::Array[Dodopayments::Dispute],
            metadata: T::Hash[Symbol, String],
            payment_id: String,
            refunds: T::Array[Dodopayments::Payment::Refund],
            settlement_amount: Integer,
            settlement_currency: Dodopayments::Currency::TaggedSymbol,
            total_amount: Integer,
            card_holder_name: T.nilable(String),
            card_issuing_country:
              T.nilable(Dodopayments::CountryCode::TaggedSymbol),
            card_last_four: T.nilable(String),
            card_network: T.nilable(String),
            card_type: T.nilable(String),
            checkout_session_id: T.nilable(String),
            discount_id: T.nilable(String),
            error_code: T.nilable(String),
            error_message: T.nilable(String),
            invoice_id: T.nilable(String),
            payment_link: T.nilable(String),
            payment_method: T.nilable(String),
            payment_method_type: T.nilable(String),
            product_cart:
              T.nilable(T::Array[Dodopayments::Payment::ProductCart]),
            settlement_tax: T.nilable(Integer),
            status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol),
            subscription_id: T.nilable(String),
            tax: T.nilable(Integer),
            updated_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class Refund < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Payment::Refund,
              Dodopayments::Internal::AnyHash
            )
          end

        # The unique identifier of the business issuing the refund.
        sig { returns(String) }
        attr_accessor :business_id

        # The timestamp of when the refund was created in UTC.
        sig { returns(Time) }
        attr_accessor :created_at

        # If true the refund is a partial refund
        sig { returns(T::Boolean) }
        attr_accessor :is_partial

        # The unique identifier of the payment associated with the refund.
        sig { returns(String) }
        attr_accessor :payment_id

        # The unique identifier of the refund.
        sig { returns(String) }
        attr_accessor :refund_id

        # The current status of the refund.
        sig { returns(Dodopayments::RefundStatus::TaggedSymbol) }
        attr_accessor :status

        # The refunded amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount

        # The currency of the refund, represented as an ISO 4217 currency code.
        sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
        attr_accessor :currency

        # The reason provided for the refund, if any. Optional.
        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            business_id: String,
            created_at: Time,
            is_partial: T::Boolean,
            payment_id: String,
            refund_id: String,
            status: Dodopayments::RefundStatus::OrSymbol,
            amount: T.nilable(Integer),
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the business issuing the refund.
          business_id:,
          # The timestamp of when the refund was created in UTC.
          created_at:,
          # If true the refund is a partial refund
          is_partial:,
          # The unique identifier of the payment associated with the refund.
          payment_id:,
          # The unique identifier of the refund.
          refund_id:,
          # The current status of the refund.
          status:,
          # The refunded amount.
          amount: nil,
          # The currency of the refund, represented as an ISO 4217 currency code.
          currency: nil,
          # The reason provided for the refund, if any. Optional.
          reason: nil
        )
        end

        sig do
          override.returns(
            {
              business_id: String,
              created_at: Time,
              is_partial: T::Boolean,
              payment_id: String,
              refund_id: String,
              status: Dodopayments::RefundStatus::TaggedSymbol,
              amount: T.nilable(Integer),
              currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
              reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Payment::ProductCart,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Integer) }
        attr_accessor :quantity

        sig do
          params(product_id: String, quantity: Integer).returns(
            T.attached_class
          )
        end
        def self.new(product_id:, quantity:)
        end

        sig { override.returns({ product_id: String, quantity: Integer }) }
        def to_hash
        end
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class PaymentCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(Dodopayments::Models::BillingAddress) }
      attr_reader :billing

      sig { params(billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash)).void }
      attr_writer :billing

      sig { returns(T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)) }
      attr_accessor :customer

      # List of products in the cart. Must contain at least 1 and at most 100 items.
      sig { returns(T::Array[Dodopayments::Models::OneTimeProductCartItem]) }
      attr_accessor :product_cart

      # List of payment methods allowed during checkout.
      #
      # Customers will **never** see payment methods that are **not** in this list.
      # However, adding a method here **does not guarantee** customers will see it.
      # Availability still depends on other factors (e.g., customer location, merchant
      # settings).
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol])
        )
      end
      attr_accessor :allowed_payment_method_types

      sig { returns(T.nilable(Dodopayments::Models::Currency::OrSymbol)) }
      attr_accessor :billing_currency

      # Discount Code to apply to the transaction
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Whether to generate a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :payment_link

      # Optional URL to redirect the customer after payment. Must be a valid URL if
      # provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      # Display saved payment methods of a returning customer False by default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_saved_payment_methods

      sig { params(show_saved_payment_methods: T::Boolean).void }
      attr_writer :show_saved_payment_methods

      # Tax ID in case the payment is B2B. If tax id validation fails the payment
      # creation will fail
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      sig do
        params(
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash),
          customer: T.any(
            Dodopayments::Models::AttachExistingCustomer,
            Dodopayments::Internal::AnyHash,
            Dodopayments::Models::CreateNewCustomer
          ),
          product_cart: T::Array[T.any(Dodopayments::Models::OneTimeProductCartItem, Dodopayments::Internal::AnyHash)],
          allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol]),
          billing_currency: T.nilable(Dodopayments::Models::Currency::OrSymbol),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          tax_id: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
        customer:,
        # List of products in the cart. Must contain at least 1 and at most 100 items.
        product_cart:,
        # List of payment methods allowed during checkout.
        #
        # Customers will **never** see payment methods that are **not** in this list.
        # However, adding a method here **does not guarantee** customers will see it.
        # Availability still depends on other factors (e.g., customer location, merchant
        # settings).
        allowed_payment_method_types: nil,
        billing_currency: nil,
        # Discount Code to apply to the transaction
        discount_code: nil,
        metadata: nil,
        # Whether to generate a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional URL to redirect the customer after payment. Must be a valid URL if
        # provided.
        return_url: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        # Tax ID in case the payment is B2B. If tax id validation fails the payment
        # creation will fail
        tax_id: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
              product_cart: T::Array[Dodopayments::Models::OneTimeProductCartItem],
              allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol]),
              billing_currency: T.nilable(Dodopayments::Models::Currency::OrSymbol),
              discount_code: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              payment_link: T.nilable(T::Boolean),
              return_url: T.nilable(String),
              show_saved_payment_methods: T::Boolean,
              tax_id: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end

      module AllowedPaymentMethodType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(:credit, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        DEBIT = T.let(:debit, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        UPI_COLLECT =
          T.let(:upi_collect, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        UPI_INTENT =
          T.let(:upi_intent, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        APPLE_PAY =
          T.let(:apple_pay, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        CASHAPP =
          T.let(:cashapp, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        GOOGLE_PAY =
          T.let(:google_pay, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        MULTIBANCO =
          T.let(:multibanco, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        BANCONTACT_CARD =
          T.let(:bancontact_card, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        EPS = T.let(:eps, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        IDEAL = T.let(:ideal, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        PRZELEWY24 =
          T.let(:przelewy24, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        AFFIRM =
          T.let(:affirm, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        KLARNA =
          T.let(:klarna, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        SEPA = T.let(:sepa, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        ACH = T.let(:ach, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        AMAZON_PAY =
          T.let(:amazon_pay, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        AFTERPAY_CLEARPAY =
          T.let(
            :afterpay_clearpay,
            Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end

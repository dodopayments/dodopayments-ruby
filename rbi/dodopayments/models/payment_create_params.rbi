# typed: strong

module Dodopayments
  module Models
    class PaymentCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::PaymentCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Billing address details for the payment
      sig { returns(Dodopayments::BillingAddress) }
      attr_reader :billing

      sig { params(billing: Dodopayments::BillingAddress::OrHash).void }
      attr_writer :billing

      # Customer information for the payment
      sig do
        returns(
          T.any(
            Dodopayments::AttachExistingCustomer,
            Dodopayments::CreateNewCustomer
          )
        )
      end
      attr_accessor :customer

      # List of products in the cart. Must contain at least 1 and at most 100 items.
      sig { returns(T::Array[Dodopayments::OneTimeProductCartItem]) }
      attr_accessor :product_cart

      # List of payment methods allowed during checkout.
      #
      # Customers will **never** see payment methods that are **not** in this list.
      # However, adding a method here **does not guarantee** customers will see it.
      # Availability still depends on other factors (e.g., customer location, merchant
      # settings).
      sig do
        returns(
          T.nilable(
            T::Array[
              Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol
            ]
          )
        )
      end
      attr_accessor :allowed_payment_method_types

      # Fix the currency in which the end customer is billed. If Dodo Payments cannot
      # support that currency for this transaction, it will not proceed
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :billing_currency

      # Discount Code to apply to the transaction
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      # Additional metadata associated with the payment. Defaults to empty if not
      # provided.
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
          billing: Dodopayments::BillingAddress::OrHash,
          customer:
            T.any(
              Dodopayments::AttachExistingCustomer::OrHash,
              Dodopayments::CreateNewCustomer::OrHash
            ),
          product_cart: T::Array[Dodopayments::OneTimeProductCartItem::OrHash],
          allowed_payment_method_types:
            T.nilable(
              T::Array[
                Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol
              ]
            ),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Billing address details for the payment
        billing:,
        # Customer information for the payment
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
        # Fix the currency in which the end customer is billed. If Dodo Payments cannot
        # support that currency for this transaction, it will not proceed
        billing_currency: nil,
        # Discount Code to apply to the transaction
        discount_code: nil,
        # Additional metadata associated with the payment. Defaults to empty if not
        # provided.
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
      )
      end

      sig do
        override.returns(
          {
            billing: Dodopayments::BillingAddress,
            customer:
              T.any(
                Dodopayments::AttachExistingCustomer,
                Dodopayments::CreateNewCustomer
              ),
            product_cart: T::Array[Dodopayments::OneTimeProductCartItem],
            allowed_payment_method_types:
              T.nilable(
                T::Array[
                  Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol
                ]
              ),
            billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
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
      def to_hash
      end

      module AllowedPaymentMethodType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::PaymentCreateParams::AllowedPaymentMethodType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        UPI_COLLECT =
          T.let(
            :upi_collect,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        UPI_INTENT =
          T.let(
            :upi_intent,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        APPLE_PAY =
          T.let(
            :apple_pay,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        CASHAPP =
          T.let(
            :cashapp,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        GOOGLE_PAY =
          T.let(
            :google_pay,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        MULTIBANCO =
          T.let(
            :multibanco,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        BANCONTACT_CARD =
          T.let(
            :bancontact_card,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        EPS =
          T.let(
            :eps,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        IDEAL =
          T.let(
            :ideal,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        PRZELEWY24 =
          T.let(
            :przelewy24,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        AFFIRM =
          T.let(
            :affirm,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        KLARNA =
          T.let(
            :klarna,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        ACH =
          T.let(
            :ach,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        AMAZON_PAY =
          T.let(
            :amazon_pay,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        AFTERPAY_CLEARPAY =
          T.let(
            :afterpay_clearpay,
            Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class PaymentCreateParams < Dodopayments::BaseModel
      extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      sig { returns(Dodopayments::Models::BillingAddress) }
      def billing
      end

      sig do
        params(_: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Util::AnyHash))
          .returns(T.any(Dodopayments::Models::BillingAddress, Dodopayments::Util::AnyHash))
      end
      def billing=(_)
      end

      sig { returns(T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)) }
      def customer
      end

      sig do
        params(_: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer))
          .returns(T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer))
      end
      def customer=(_)
      end

      # List of products in the cart. Must contain at least 1 and at most 100 items.
      sig { returns(T::Array[Dodopayments::Models::OneTimeProductCartItem]) }
      def product_cart
      end

      sig do
        params(_: T::Array[Dodopayments::Models::OneTimeProductCartItem])
          .returns(T::Array[Dodopayments::Models::OneTimeProductCartItem])
      end
      def product_cart=(_)
      end

      # List of payment methods allowed during checkout.
      #
      #   Customers will **never** see payment methods that are **not** in this list.
      #   However, adding a method here **does not guarantee** customers will see it.
      #   Availability still depends on other factors (e.g., customer location, merchant
      #   settings).
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol])
        )
      end
      def allowed_payment_method_types
      end

      sig do
        params(
          _: T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol])
        )
          .returns(
            T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol])
          )
      end
      def allowed_payment_method_types=(_)
      end

      # Discount Code to apply to the transaction
      sig { returns(T.nilable(String)) }
      def discount_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def discount_code=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Whether to generate a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      def payment_link
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def payment_link=(_)
      end

      # Optional URL to redirect the customer after payment. Must be a valid URL if
      #   provided.
      sig { returns(T.nilable(String)) }
      def return_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_)
      end

      # Tax ID in case the payment is B2B. If tax id validation fails the payment
      #   creation will fail
      sig { returns(T.nilable(String)) }
      def tax_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tax_id=(_)
      end

      sig do
        params(
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Util::AnyHash),
          customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
          product_cart: T::Array[Dodopayments::Models::OneTimeProductCartItem],
          allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol]),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          tax_id: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
        customer:,
        product_cart:,
        allowed_payment_method_types: nil,
        discount_code: nil,
        metadata: nil,
        payment_link: nil,
        return_url: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
              product_cart: T::Array[Dodopayments::Models::OneTimeProductCartItem],
              allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol]),
              discount_code: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              payment_link: T.nilable(T::Boolean),
              return_url: T.nilable(String),
              tax_id: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      module AllowedPaymentMethodType
        extend Dodopayments::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol) }

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

        class << self
          sig do
            override
              .returns(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end

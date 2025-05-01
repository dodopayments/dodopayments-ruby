# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(Dodopayments::Models::BillingAddress) }
      attr_reader :billing

      sig { params(billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash)).void }
      attr_writer :billing

      sig { returns(T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)) }
      attr_accessor :customer

      # Unique identifier of the product to subscribe to
      sig { returns(String) }
      attr_accessor :product_id

      # Number of units to subscribe for. Must be at least 1.
      sig { returns(Integer) }
      attr_accessor :quantity

      # Attach addons to this subscription
      sig { returns(T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::Addon])) }
      attr_accessor :addons

      # List of payment methods allowed during checkout.
      #
      # Customers will **never** see payment methods that are **not** in this list.
      # However, adding a method here **does not guarantee** customers will see it.
      # Availability still depends on other factors (e.g., customer location, merchant
      # settings).
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol])
        )
      end
      attr_accessor :allowed_payment_method_types

      sig { returns(T.nilable(Dodopayments::Models::Currency::OrSymbol)) }
      attr_accessor :billing_currency

      # Discount Code to apply to the subscription
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Dodopayments::Models::SubscriptionCreateParams::OnDemand)) }
      attr_reader :on_demand

      sig do
        params(
          on_demand: T.nilable(
            T.any(Dodopayments::Models::SubscriptionCreateParams::OnDemand, Dodopayments::Internal::AnyHash)
          )
        )
          .void
      end
      attr_writer :on_demand

      # If true, generates a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :payment_link

      # Optional URL to redirect after successful subscription creation
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

      # Optional trial period in days If specified, this value overrides the trial
      # period set in the product's price Must be between 0 and 10000 days
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      sig do
        params(
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash),
          customer: T.any(
            Dodopayments::Models::AttachExistingCustomer,
            Dodopayments::Internal::AnyHash,
            Dodopayments::Models::CreateNewCustomer
          ),
          product_id: String,
          quantity: Integer,
          addons: T.nilable(
            T::Array[T.any(Dodopayments::Models::SubscriptionCreateParams::Addon, Dodopayments::Internal::AnyHash)]
          ),
          allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol]),
          billing_currency: T.nilable(Dodopayments::Models::Currency::OrSymbol),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          on_demand: T.nilable(
            T.any(Dodopayments::Models::SubscriptionCreateParams::OnDemand, Dodopayments::Internal::AnyHash)
          ),
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
        customer:,
        # Unique identifier of the product to subscribe to
        product_id:,
        # Number of units to subscribe for. Must be at least 1.
        quantity:,
        # Attach addons to this subscription
        addons: nil,
        # List of payment methods allowed during checkout.
        #
        # Customers will **never** see payment methods that are **not** in this list.
        # However, adding a method here **does not guarantee** customers will see it.
        # Availability still depends on other factors (e.g., customer location, merchant
        # settings).
        allowed_payment_method_types: nil,
        billing_currency: nil,
        # Discount Code to apply to the subscription
        discount_code: nil,
        metadata: nil,
        on_demand: nil,
        # If true, generates a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional URL to redirect after successful subscription creation
        return_url: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        # Tax ID in case the payment is B2B. If tax id validation fails the payment
        # creation will fail
        tax_id: nil,
        # Optional trial period in days If specified, this value overrides the trial
        # period set in the product's price Must be between 0 and 10000 days
        trial_period_days: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
              product_id: String,
              quantity: Integer,
              addons: T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::Addon]),
              allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol]),
              billing_currency: T.nilable(Dodopayments::Models::Currency::OrSymbol),
              discount_code: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              on_demand: T.nilable(Dodopayments::Models::SubscriptionCreateParams::OnDemand),
              payment_link: T.nilable(T::Boolean),
              return_url: T.nilable(String),
              show_saved_payment_methods: T::Boolean,
              tax_id: T.nilable(String),
              trial_period_days: T.nilable(Integer),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end

      class Addon < Dodopayments::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :addon_id

        sig { returns(Integer) }
        attr_accessor :quantity

        sig { params(addon_id: String, quantity: Integer).returns(T.attached_class) }
        def self.new(addon_id:, quantity:); end

        sig { override.returns({addon_id: String, quantity: Integer}) }
        def to_hash; end
      end

      module AllowedPaymentMethodType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(:credit, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        DEBIT =
          T.let(:debit, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        UPI_COLLECT =
          T.let(
            :upi_collect,
            Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        UPI_INTENT =
          T.let(:upi_intent, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        APPLE_PAY =
          T.let(:apple_pay, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        CASHAPP =
          T.let(:cashapp, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        GOOGLE_PAY =
          T.let(:google_pay, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        MULTIBANCO =
          T.let(:multibanco, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        BANCONTACT_CARD =
          T.let(
            :bancontact_card,
            Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        EPS = T.let(:eps, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        IDEAL =
          T.let(:ideal, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        PRZELEWY24 =
          T.let(:przelewy24, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        AFFIRM =
          T.let(:affirm, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        KLARNA =
          T.let(:klarna, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        SEPA =
          T.let(:sepa, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        ACH = T.let(:ach, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        AMAZON_PAY =
          T.let(:amazon_pay, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol)
        AFTERPAY_CLEARPAY =
          T.let(
            :afterpay_clearpay,
            Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol])
        end
        def self.values; end
      end

      class OnDemand < Dodopayments::Internal::Type::BaseModel
        # If set as True, does not perform any charge and only authorizes payment method
        # details for future use.
        sig { returns(T::Boolean) }
        attr_accessor :mandate_only

        # Product price for the initial charge to customer If not specified the stored
        # price of the product will be used Represented in the lowest denomination of the
        # currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :product_price

        sig { params(mandate_only: T::Boolean, product_price: T.nilable(Integer)).returns(T.attached_class) }
        def self.new(
          # If set as True, does not perform any charge and only authorizes payment method
          # details for future use.
          mandate_only:,
          # Product price for the initial charge to customer If not specified the stored
          # price of the product will be used Represented in the lowest denomination of the
          # currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          product_price: nil
        ); end
        sig { override.returns({mandate_only: T::Boolean, product_price: T.nilable(Integer)}) }
        def to_hash; end
      end
    end
  end
end

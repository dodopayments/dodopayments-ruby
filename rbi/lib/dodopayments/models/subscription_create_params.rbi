# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateParams < Dodopayments::BaseModel
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

      # Unique identifier of the product to subscribe to
      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      # Number of units to subscribe for. Must be at least 1.
      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      # List of payment methods allowed during checkout.
      #
      #   Customers will **never** see payment methods that are **not** in this list.
      #   However, adding a method here **does not guarantee** customers will see it.
      #   Availability still depends on other factors (e.g., customer location, merchant
      #   settings).
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol])
        )
      end
      def allowed_payment_method_types
      end

      sig do
        params(
          _: T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol])
        )
          .returns(
            T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol])
          )
      end
      def allowed_payment_method_types=(_)
      end

      # Discount Code to apply to the subscription
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

      sig { returns(T.nilable(Dodopayments::Models::SubscriptionCreateParams::OnDemand)) }
      def on_demand
      end

      sig do
        params(
          _: T.nilable(T.any(Dodopayments::Models::SubscriptionCreateParams::OnDemand, Dodopayments::Util::AnyHash))
        )
          .returns(
            T.nilable(T.any(Dodopayments::Models::SubscriptionCreateParams::OnDemand, Dodopayments::Util::AnyHash))
          )
      end
      def on_demand=(_)
      end

      # If true, generates a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      def payment_link
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def payment_link=(_)
      end

      # Optional URL to redirect after successful subscription creation
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

      # Optional trial period in days If specified, this value overrides the trial
      #   period set in the product's price Must be between 0 and 10000 days
      sig { returns(T.nilable(Integer)) }
      def trial_period_days
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def trial_period_days=(_)
      end

      sig do
        params(
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Util::AnyHash),
          customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
          product_id: String,
          quantity: Integer,
          allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol]),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          on_demand: T.nilable(T.any(Dodopayments::Models::SubscriptionCreateParams::OnDemand, Dodopayments::Util::AnyHash)),
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
        customer:,
        product_id:,
        quantity:,
        allowed_payment_method_types: nil,
        discount_code: nil,
        metadata: nil,
        on_demand: nil,
        payment_link: nil,
        return_url: nil,
        tax_id: nil,
        trial_period_days: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
              product_id: String,
              quantity: Integer,
              allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol]),
              discount_code: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              on_demand: T.nilable(Dodopayments::Models::SubscriptionCreateParams::OnDemand),
              payment_link: T.nilable(T::Boolean),
              return_url: T.nilable(String),
              tax_id: T.nilable(String),
              trial_period_days: T.nilable(Integer),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      module AllowedPaymentMethodType
        extend Dodopayments::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol) }

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

        class << self
          sig do
            override
              .returns(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol])
          end
          def values
          end
        end
      end

      class OnDemand < Dodopayments::BaseModel
        # If set as True, does not perform any charge and only authorizes payment method
        #   details for future use.
        sig { returns(T::Boolean) }
        def mandate_only
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def mandate_only=(_)
        end

        # Product price for the initial charge to customer If not specified the stored
        #   price of the product will be used Represented in the lowest denomination of the
        #   currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(T.nilable(Integer)) }
        def product_price
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def product_price=(_)
        end

        sig { params(mandate_only: T::Boolean, product_price: T.nilable(Integer)).returns(T.attached_class) }
        def self.new(mandate_only:, product_price: nil)
        end

        sig { override.returns({mandate_only: T::Boolean, product_price: T.nilable(Integer)}) }
        def to_hash
        end
      end
    end
  end
end

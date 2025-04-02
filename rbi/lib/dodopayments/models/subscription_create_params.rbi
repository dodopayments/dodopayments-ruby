# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateParams < Dodopayments::BaseModel
      extend Dodopayments::Type::RequestParameters::Converter
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

      sig { returns(T.nilable(Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::OrSymbol)) }
      attr_accessor :billing_currency

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

      # Display saved payment methods of a returning customer False by default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_saved_payment_methods

      sig { params(show_saved_payment_methods: T::Boolean).void }
      attr_writer :show_saved_payment_methods

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
          billing_currency: T.nilable(Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::OrSymbol),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          on_demand: T.nilable(T.any(Dodopayments::Models::SubscriptionCreateParams::OnDemand, Dodopayments::Util::AnyHash)),
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
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
        billing_currency: nil,
        discount_code: nil,
        metadata: nil,
        on_demand: nil,
        payment_link: nil,
        return_url: nil,
        show_saved_payment_methods: nil,
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
              billing_currency: T.nilable(Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::OrSymbol),
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
      def to_hash
      end

      module AllowedPaymentMethodType
        extend Dodopayments::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType) }
        OrSymbol =
          T.type_alias do
            T.any(
              Symbol,
              String,
              Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
            )
          end

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

      module BillingCurrency
        extend Dodopayments::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol) }

        AED = T.let(:AED, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::TaggedSymbol]) }
        def self.values
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

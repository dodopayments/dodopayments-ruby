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
      #   Customers will **never** see payment methods that are **not** in this list.
      #   However, adding a method here **does not guarantee** customers will see it.
      #   Availability still depends on other factors (e.g., customer location, merchant
      #   settings).
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol])
        )
      end
      attr_accessor :allowed_payment_method_types

      sig { returns(T.nilable(Dodopayments::Models::PaymentCreateParams::BillingCurrency::OrSymbol)) }
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
      #   provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      # Display saved payment methods of a returning customer False by default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_saved_payment_methods

      sig { params(show_saved_payment_methods: T::Boolean).void }
      attr_writer :show_saved_payment_methods

      # Tax ID in case the payment is B2B. If tax id validation fails the payment
      #   creation will fail
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
          billing_currency: T.nilable(Dodopayments::Models::PaymentCreateParams::BillingCurrency::OrSymbol),
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
        product_cart:,
        allowed_payment_method_types: nil,
        billing_currency: nil,
        discount_code: nil,
        metadata: nil,
        payment_link: nil,
        return_url: nil,
        show_saved_payment_methods: nil,
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
              billing_currency: T.nilable(Dodopayments::Models::PaymentCreateParams::BillingCurrency::OrSymbol),
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
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol) }

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

        sig do
          override
            .returns(T::Array[Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType::TaggedSymbol])
        end
        def self.values; end
      end

      module BillingCurrency
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::PaymentCreateParams::BillingCurrency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol) }

        AED = T.let(:AED, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::PaymentCreateParams::BillingCurrency::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end

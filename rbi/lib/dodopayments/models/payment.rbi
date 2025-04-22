# typed: strong

module Dodopayments
  module Models
    class Payment < Dodopayments::Internal::Type::BaseModel
      # Identifier of the business associated with the payment
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the payment was created
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Models::Payment::Currency::TaggedSymbol) }
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

      sig { returns(Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol) }
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
          business_id: String,
          created_at: Time,
          currency: Dodopayments::Models::Payment::Currency::OrSymbol,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
          disputes: T::Array[T.any(Dodopayments::Models::Dispute, Dodopayments::Internal::AnyHash)],
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          refunds: T::Array[T.any(Dodopayments::Models::Refund, Dodopayments::Internal::AnyHash)],
          settlement_amount: Integer,
          settlement_currency: Dodopayments::Models::Payment::SettlementCurrency::OrSymbol,
          total_amount: Integer,
          discount_id: T.nilable(String),
          error_message: T.nilable(String),
          payment_link: T.nilable(String),
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          product_cart: T.nilable(T::Array[T.any(Dodopayments::Models::Payment::ProductCart, Dodopayments::Internal::AnyHash)]),
          status: T.nilable(Dodopayments::Models::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String),
          tax: T.nilable(Integer),
          updated_at: T.nilable(Time)
        )
          .returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        currency:,
        customer:,
        disputes:,
        metadata:,
        payment_id:,
        refunds:,
        settlement_amount:,
        settlement_currency:,
        total_amount:,
        discount_id: nil,
        error_message: nil,
        payment_link: nil,
        payment_method: nil,
        payment_method_type: nil,
        product_cart: nil,
        status: nil,
        subscription_id: nil,
        tax: nil,
        updated_at: nil
      ); end
      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              currency: Dodopayments::Models::Payment::Currency::TaggedSymbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              disputes: T::Array[Dodopayments::Models::Dispute],
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              refunds: T::Array[Dodopayments::Models::Refund],
              settlement_amount: Integer,
              settlement_currency: Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol,
              total_amount: Integer,
              discount_id: T.nilable(String),
              error_message: T.nilable(String),
              payment_link: T.nilable(String),
              payment_method: T.nilable(String),
              payment_method_type: T.nilable(String),
              product_cart: T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart]),
              status: T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol),
              subscription_id: T.nilable(String),
              tax: T.nilable(Integer),
              updated_at: T.nilable(Time)
            }
          )
      end
      def to_hash; end

      module Currency
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Payment::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED = T.let(:AED, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::Payment::Currency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::Payment::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::Payment::Currency::TaggedSymbol]) }
        def self.values; end
      end

      module SettlementCurrency
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Payment::SettlementCurrency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED = T.let(:AED, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::Payment::SettlementCurrency::TaggedSymbol]) }
        def self.values; end
      end

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

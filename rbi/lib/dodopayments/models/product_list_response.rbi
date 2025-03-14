# typed: strong

module Dodopayments
  module Models
    class ProductListResponse < Dodopayments::BaseModel
      # Unique identifier for the business to which the product belongs.
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # Timestamp when the product was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Indicates if the product is recurring (e.g., subscriptions).
      sig { returns(T::Boolean) }
      def is_recurring
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_recurring=(_)
      end

      # Unique identifier for the product.
      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      sig { returns(Symbol) }
      def tax_category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def tax_category=(_)
      end

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def currency=(_)
      end

      # Description of the product, optional.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # URL of the product image, optional.
      sig { returns(T.nilable(String)) }
      def image
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def image=(_)
      end

      # Name of the product, optional.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      # Price of the product, optional.
      #
      #   The price is represented in the lowest denomination of the currency. For
      #   example:
      #
      #   - In USD, a price of `$12.34` would be represented as `1234` (cents).
      #   - In JPY, a price of `¥1500` would be represented as `1500` (yen).
      #   - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
      #
      #   This ensures precision and avoids floating-point rounding errors.
      sig { returns(T.nilable(Integer)) }
      def price
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def price=(_)
      end

      sig do
        returns(
          T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
        )
      end
      def price_detail
      end

      sig do
        params(
          _: T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
        )
          .returns(
            T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
          )
      end
      def price_detail=(_)
      end

      # Indicates if the price is tax inclusive
      sig { returns(T.nilable(T::Boolean)) }
      def tax_inclusive
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def tax_inclusive=(_)
      end

      sig do
        params(
          business_id: String,
          created_at: Time,
          is_recurring: T::Boolean,
          product_id: String,
          tax_category: Symbol,
          updated_at: Time,
          currency: T.nilable(Symbol),
          description: T.nilable(String),
          image: T.nilable(String),
          name: T.nilable(String),
          price: T.nilable(Integer),
          price_detail: T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)),
          tax_inclusive: T.nilable(T::Boolean)
        )
          .returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        is_recurring:,
        product_id:,
        tax_category:,
        updated_at:,
        currency: nil,
        description: nil,
        image: nil,
        name: nil,
        price: nil,
        price_detail: nil,
        tax_inclusive: nil
      )
      end

      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              is_recurring: T::Boolean,
              product_id: String,
              tax_category: Symbol,
              updated_at: Time,
              currency: T.nilable(Symbol),
              description: T.nilable(String),
              image: T.nilable(String),
              name: T.nilable(String),
              price: T.nilable(Integer),
              price_detail: T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)),
              tax_inclusive: T.nilable(T::Boolean)
            }
          )
      end
      def to_hash
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      class TaxCategory < Dodopayments::Enum
        abstract!

        DIGITAL_PRODUCTS = :digital_products
        SAAS = :saas
        E_BOOK = :e_book
        EDTECH = :edtech

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Currency < Dodopayments::Enum
        abstract!

        AED = T.let(:AED, T.nilable(Symbol))
        ALL = T.let(:ALL, T.nilable(Symbol))
        AMD = T.let(:AMD, T.nilable(Symbol))
        ANG = T.let(:ANG, T.nilable(Symbol))
        AOA = T.let(:AOA, T.nilable(Symbol))
        ARS = T.let(:ARS, T.nilable(Symbol))
        AUD = T.let(:AUD, T.nilable(Symbol))
        AWG = T.let(:AWG, T.nilable(Symbol))
        AZN = T.let(:AZN, T.nilable(Symbol))
        BAM = T.let(:BAM, T.nilable(Symbol))
        BBD = T.let(:BBD, T.nilable(Symbol))
        BDT = T.let(:BDT, T.nilable(Symbol))
        BGN = T.let(:BGN, T.nilable(Symbol))
        BHD = T.let(:BHD, T.nilable(Symbol))
        BIF = T.let(:BIF, T.nilable(Symbol))
        BMD = T.let(:BMD, T.nilable(Symbol))
        BND = T.let(:BND, T.nilable(Symbol))
        BOB = T.let(:BOB, T.nilable(Symbol))
        BRL = T.let(:BRL, T.nilable(Symbol))
        BSD = T.let(:BSD, T.nilable(Symbol))
        BWP = T.let(:BWP, T.nilable(Symbol))
        BYN = T.let(:BYN, T.nilable(Symbol))
        BZD = T.let(:BZD, T.nilable(Symbol))
        CAD = T.let(:CAD, T.nilable(Symbol))
        CHF = T.let(:CHF, T.nilable(Symbol))
        CLP = T.let(:CLP, T.nilable(Symbol))
        CNY = T.let(:CNY, T.nilable(Symbol))
        COP = T.let(:COP, T.nilable(Symbol))
        CRC = T.let(:CRC, T.nilable(Symbol))
        CUP = T.let(:CUP, T.nilable(Symbol))
        CVE = T.let(:CVE, T.nilable(Symbol))
        CZK = T.let(:CZK, T.nilable(Symbol))
        DJF = T.let(:DJF, T.nilable(Symbol))
        DKK = T.let(:DKK, T.nilable(Symbol))
        DOP = T.let(:DOP, T.nilable(Symbol))
        DZD = T.let(:DZD, T.nilable(Symbol))
        EGP = T.let(:EGP, T.nilable(Symbol))
        ETB = T.let(:ETB, T.nilable(Symbol))
        EUR = T.let(:EUR, T.nilable(Symbol))
        FJD = T.let(:FJD, T.nilable(Symbol))
        FKP = T.let(:FKP, T.nilable(Symbol))
        GBP = T.let(:GBP, T.nilable(Symbol))
        GEL = T.let(:GEL, T.nilable(Symbol))
        GHS = T.let(:GHS, T.nilable(Symbol))
        GIP = T.let(:GIP, T.nilable(Symbol))
        GMD = T.let(:GMD, T.nilable(Symbol))
        GNF = T.let(:GNF, T.nilable(Symbol))
        GTQ = T.let(:GTQ, T.nilable(Symbol))
        GYD = T.let(:GYD, T.nilable(Symbol))
        HKD = T.let(:HKD, T.nilable(Symbol))
        HNL = T.let(:HNL, T.nilable(Symbol))
        HRK = T.let(:HRK, T.nilable(Symbol))
        HTG = T.let(:HTG, T.nilable(Symbol))
        HUF = T.let(:HUF, T.nilable(Symbol))
        IDR = T.let(:IDR, T.nilable(Symbol))
        ILS = T.let(:ILS, T.nilable(Symbol))
        INR = T.let(:INR, T.nilable(Symbol))
        IQD = T.let(:IQD, T.nilable(Symbol))
        JMD = T.let(:JMD, T.nilable(Symbol))
        JOD = T.let(:JOD, T.nilable(Symbol))
        JPY = T.let(:JPY, T.nilable(Symbol))
        KES = T.let(:KES, T.nilable(Symbol))
        KGS = T.let(:KGS, T.nilable(Symbol))
        KHR = T.let(:KHR, T.nilable(Symbol))
        KMF = T.let(:KMF, T.nilable(Symbol))
        KRW = T.let(:KRW, T.nilable(Symbol))
        KWD = T.let(:KWD, T.nilable(Symbol))
        KYD = T.let(:KYD, T.nilable(Symbol))
        KZT = T.let(:KZT, T.nilable(Symbol))
        LAK = T.let(:LAK, T.nilable(Symbol))
        LBP = T.let(:LBP, T.nilable(Symbol))
        LKR = T.let(:LKR, T.nilable(Symbol))
        LRD = T.let(:LRD, T.nilable(Symbol))
        LSL = T.let(:LSL, T.nilable(Symbol))
        LYD = T.let(:LYD, T.nilable(Symbol))
        MAD = T.let(:MAD, T.nilable(Symbol))
        MDL = T.let(:MDL, T.nilable(Symbol))
        MGA = T.let(:MGA, T.nilable(Symbol))
        MKD = T.let(:MKD, T.nilable(Symbol))
        MMK = T.let(:MMK, T.nilable(Symbol))
        MNT = T.let(:MNT, T.nilable(Symbol))
        MOP = T.let(:MOP, T.nilable(Symbol))
        MRU = T.let(:MRU, T.nilable(Symbol))
        MUR = T.let(:MUR, T.nilable(Symbol))
        MVR = T.let(:MVR, T.nilable(Symbol))
        MWK = T.let(:MWK, T.nilable(Symbol))
        MXN = T.let(:MXN, T.nilable(Symbol))
        MYR = T.let(:MYR, T.nilable(Symbol))
        MZN = T.let(:MZN, T.nilable(Symbol))
        NAD = T.let(:NAD, T.nilable(Symbol))
        NGN = T.let(:NGN, T.nilable(Symbol))
        NIO = T.let(:NIO, T.nilable(Symbol))
        NOK = T.let(:NOK, T.nilable(Symbol))
        NPR = T.let(:NPR, T.nilable(Symbol))
        NZD = T.let(:NZD, T.nilable(Symbol))
        OMR = T.let(:OMR, T.nilable(Symbol))
        PAB = T.let(:PAB, T.nilable(Symbol))
        PEN = T.let(:PEN, T.nilable(Symbol))
        PGK = T.let(:PGK, T.nilable(Symbol))
        PHP = T.let(:PHP, T.nilable(Symbol))
        PKR = T.let(:PKR, T.nilable(Symbol))
        PLN = T.let(:PLN, T.nilable(Symbol))
        PYG = T.let(:PYG, T.nilable(Symbol))
        QAR = T.let(:QAR, T.nilable(Symbol))
        RON = T.let(:RON, T.nilable(Symbol))
        RSD = T.let(:RSD, T.nilable(Symbol))
        RUB = T.let(:RUB, T.nilable(Symbol))
        RWF = T.let(:RWF, T.nilable(Symbol))
        SAR = T.let(:SAR, T.nilable(Symbol))
        SBD = T.let(:SBD, T.nilable(Symbol))
        SCR = T.let(:SCR, T.nilable(Symbol))
        SEK = T.let(:SEK, T.nilable(Symbol))
        SGD = T.let(:SGD, T.nilable(Symbol))
        SHP = T.let(:SHP, T.nilable(Symbol))
        SLE = T.let(:SLE, T.nilable(Symbol))
        SLL = T.let(:SLL, T.nilable(Symbol))
        SOS = T.let(:SOS, T.nilable(Symbol))
        SRD = T.let(:SRD, T.nilable(Symbol))
        SSP = T.let(:SSP, T.nilable(Symbol))
        STN = T.let(:STN, T.nilable(Symbol))
        SVC = T.let(:SVC, T.nilable(Symbol))
        SZL = T.let(:SZL, T.nilable(Symbol))
        THB = T.let(:THB, T.nilable(Symbol))
        TND = T.let(:TND, T.nilable(Symbol))
        TOP = T.let(:TOP, T.nilable(Symbol))
        TRY = T.let(:TRY, T.nilable(Symbol))
        TTD = T.let(:TTD, T.nilable(Symbol))
        TWD = T.let(:TWD, T.nilable(Symbol))
        TZS = T.let(:TZS, T.nilable(Symbol))
        UAH = T.let(:UAH, T.nilable(Symbol))
        UGX = T.let(:UGX, T.nilable(Symbol))
        USD = T.let(:USD, T.nilable(Symbol))
        UYU = T.let(:UYU, T.nilable(Symbol))
        UZS = T.let(:UZS, T.nilable(Symbol))
        VES = T.let(:VES, T.nilable(Symbol))
        VND = T.let(:VND, T.nilable(Symbol))
        VUV = T.let(:VUV, T.nilable(Symbol))
        WST = T.let(:WST, T.nilable(Symbol))
        XAF = T.let(:XAF, T.nilable(Symbol))
        XCD = T.let(:XCD, T.nilable(Symbol))
        XOF = T.let(:XOF, T.nilable(Symbol))
        XPF = T.let(:XPF, T.nilable(Symbol))
        YER = T.let(:YER, T.nilable(Symbol))
        ZAR = T.let(:ZAR, T.nilable(Symbol))
        ZMW = T.let(:ZMW, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end

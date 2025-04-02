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
      sig { returns(Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol) }
      def tax_category
      end

      sig do
        params(_: Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol)
          .returns(Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol)
      end
      def tax_category=(_)
      end

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)) }
      def currency
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol))
          .returns(T.nilable(Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol))
      end
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
          tax_category: Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol,
          updated_at: Time,
          currency: T.nilable(Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol),
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
              tax_category: Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol,
              updated_at: Time,
              currency: T.nilable(Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol),
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
      module TaxCategory
        extend Dodopayments::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::ProductListResponse::TaxCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol) }

        DIGITAL_PRODUCTS =
          T.let(:digital_products, Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol)
        SAAS = T.let(:saas, Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol)
        E_BOOK = T.let(:e_book, Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol)
        EDTECH = T.let(:edtech, Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Dodopayments::Models::ProductListResponse::TaxCategory::TaggedSymbol]) }
          def values
          end
        end
      end

      module Currency
        extend Dodopayments::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::ProductListResponse::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol) }

        AED = T.let(:AED, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Dodopayments::Models::ProductListResponse::Currency::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end

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

        Value = type_template(:out) { {fixed: Symbol} }

        DIGITAL_PRODUCTS = :digital_products
        SAAS = :saas
        E_BOOK = :e_book
        EDTECH = :edtech
      end

      class Currency < Dodopayments::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        AED = :AED
        ALL = :ALL
        AMD = :AMD
        ANG = :ANG
        AOA = :AOA
        ARS = :ARS
        AUD = :AUD
        AWG = :AWG
        AZN = :AZN
        BAM = :BAM
        BBD = :BBD
        BDT = :BDT
        BGN = :BGN
        BHD = :BHD
        BIF = :BIF
        BMD = :BMD
        BND = :BND
        BOB = :BOB
        BRL = :BRL
        BSD = :BSD
        BWP = :BWP
        BYN = :BYN
        BZD = :BZD
        CAD = :CAD
        CHF = :CHF
        CLP = :CLP
        CNY = :CNY
        COP = :COP
        CRC = :CRC
        CUP = :CUP
        CVE = :CVE
        CZK = :CZK
        DJF = :DJF
        DKK = :DKK
        DOP = :DOP
        DZD = :DZD
        EGP = :EGP
        ETB = :ETB
        EUR = :EUR
        FJD = :FJD
        FKP = :FKP
        GBP = :GBP
        GEL = :GEL
        GHS = :GHS
        GIP = :GIP
        GMD = :GMD
        GNF = :GNF
        GTQ = :GTQ
        GYD = :GYD
        HKD = :HKD
        HNL = :HNL
        HRK = :HRK
        HTG = :HTG
        HUF = :HUF
        IDR = :IDR
        ILS = :ILS
        INR = :INR
        IQD = :IQD
        JMD = :JMD
        JOD = :JOD
        JPY = :JPY
        KES = :KES
        KGS = :KGS
        KHR = :KHR
        KMF = :KMF
        KRW = :KRW
        KWD = :KWD
        KYD = :KYD
        KZT = :KZT
        LAK = :LAK
        LBP = :LBP
        LKR = :LKR
        LRD = :LRD
        LSL = :LSL
        LYD = :LYD
        MAD = :MAD
        MDL = :MDL
        MGA = :MGA
        MKD = :MKD
        MMK = :MMK
        MNT = :MNT
        MOP = :MOP
        MRU = :MRU
        MUR = :MUR
        MVR = :MVR
        MWK = :MWK
        MXN = :MXN
        MYR = :MYR
        MZN = :MZN
        NAD = :NAD
        NGN = :NGN
        NIO = :NIO
        NOK = :NOK
        NPR = :NPR
        NZD = :NZD
        OMR = :OMR
        PAB = :PAB
        PEN = :PEN
        PGK = :PGK
        PHP = :PHP
        PKR = :PKR
        PLN = :PLN
        PYG = :PYG
        QAR = :QAR
        RON = :RON
        RSD = :RSD
        RUB = :RUB
        RWF = :RWF
        SAR = :SAR
        SBD = :SBD
        SCR = :SCR
        SEK = :SEK
        SGD = :SGD
        SHP = :SHP
        SLE = :SLE
        SLL = :SLL
        SOS = :SOS
        SRD = :SRD
        SSP = :SSP
        STN = :STN
        SVC = :SVC
        SZL = :SZL
        THB = :THB
        TND = :TND
        TOP = :TOP
        TRY = :TRY
        TTD = :TTD
        TWD = :TWD
        TZS = :TZS
        UAH = :UAH
        UGX = :UGX
        USD = :USD
        UYU = :UYU
        UZS = :UZS
        VES = :VES
        VND = :VND
        VUV = :VUV
        WST = :WST
        XAF = :XAF
        XCD = :XCD
        XOF = :XOF
        XPF = :XPF
        YER = :YER
        ZAR = :ZAR
        ZMW = :ZMW
      end
    end
  end
end

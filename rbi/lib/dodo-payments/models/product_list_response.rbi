# typed: strong

module DodoPayments
  module Models
    class ProductListResponse < DodoPayments::BaseModel
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
          T.nilable(
            T.any(
              DodoPayments::Models::ProductListResponse::PriceDetail::OneTimePrice,
              DodoPayments::Models::ProductListResponse::PriceDetail::RecurringPrice
            )
          )
        )
      end
      def price_detail
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              DodoPayments::Models::ProductListResponse::PriceDetail::OneTimePrice,
              DodoPayments::Models::ProductListResponse::PriceDetail::RecurringPrice
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                DodoPayments::Models::ProductListResponse::PriceDetail::OneTimePrice,
                DodoPayments::Models::ProductListResponse::PriceDetail::RecurringPrice
              )
            )
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
          price_detail: T.nilable(
            T.any(
              DodoPayments::Models::ProductListResponse::PriceDetail::OneTimePrice,
              DodoPayments::Models::ProductListResponse::PriceDetail::RecurringPrice
            )
          ),
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
              price_detail: T.nilable(
                T.any(
                  DodoPayments::Models::ProductListResponse::PriceDetail::OneTimePrice,
                  DodoPayments::Models::ProductListResponse::PriceDetail::RecurringPrice
                )
              ),
              tax_inclusive: T.nilable(T::Boolean)
            }
          )
      end
      def to_hash
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      class TaxCategory < DodoPayments::Enum
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

      class Currency < DodoPayments::Enum
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

      class PriceDetail < DodoPayments::Union
        abstract!

        class OneTimePrice < DodoPayments::BaseModel
          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          # Discount applied to the price, represented as a percentage (0 to 100).
          sig { returns(Float) }
          def discount
          end

          sig { params(_: Float).returns(Float) }
          def discount=(_)
          end

          # The payment amount, in the smallest denomination of the currency (e.g., cents
          #   for USD). For example, to charge $1.00, pass `100`.
          #
          #   If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
          #   represents the **minimum** amount the customer must pay.
          sig { returns(Integer) }
          def price
          end

          sig { params(_: Integer).returns(Integer) }
          def price=(_)
          end

          # Indicates if purchasing power parity adjustments are applied to the price.
          #   Purchasing power parity feature is not available as of now.
          sig { returns(T::Boolean) }
          def purchasing_power_parity
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def purchasing_power_parity=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          # Indicates whether the customer can pay any amount they choose. If set to `true`,
          #   the [`price`](Self::price) field is the minimum amount.
          sig { returns(T.nilable(T::Boolean)) }
          def pay_what_you_want
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def pay_what_you_want=(_)
          end

          # A suggested price for the user to pay. This value is only considered if
          #   [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
          #   ignored.
          sig { returns(T.nilable(Integer)) }
          def suggested_price
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def suggested_price=(_)
          end

          # Indicates if the price is tax inclusive.
          sig { returns(T.nilable(T::Boolean)) }
          def tax_inclusive
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def tax_inclusive=(_)
          end

          sig do
            params(
              currency: Symbol,
              discount: Float,
              price: Integer,
              purchasing_power_parity: T::Boolean,
              pay_what_you_want: T::Boolean,
              suggested_price: T.nilable(Integer),
              tax_inclusive: T.nilable(T::Boolean),
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            currency:,
            discount:,
            price:,
            purchasing_power_parity:,
            pay_what_you_want: nil,
            suggested_price: nil,
            tax_inclusive: nil,
            type: :one_time_price
          )
          end

          sig do
            override
              .returns(
                {
                  currency: Symbol,
                  discount: Float,
                  price: Integer,
                  purchasing_power_parity: T::Boolean,
                  type: Symbol,
                  pay_what_you_want: T::Boolean,
                  suggested_price: T.nilable(Integer),
                  tax_inclusive: T.nilable(T::Boolean)
                }
              )
          end
          def to_hash
          end

          class Currency < DodoPayments::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class RecurringPrice < DodoPayments::BaseModel
          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          # Discount applied to the price, represented as a percentage (0 to 100).
          sig { returns(Float) }
          def discount
          end

          sig { params(_: Float).returns(Float) }
          def discount=(_)
          end

          # Number of units for the payment frequency. For example, a value of `1` with a
          #   `payment_frequency_interval` of `month` represents monthly payments.
          sig { returns(Integer) }
          def payment_frequency_count
          end

          sig { params(_: Integer).returns(Integer) }
          def payment_frequency_count=(_)
          end

          sig { returns(Symbol) }
          def payment_frequency_interval
          end

          sig { params(_: Symbol).returns(Symbol) }
          def payment_frequency_interval=(_)
          end

          # The payment amount. Represented in the lowest denomination of the currency
          #   (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          sig { returns(Integer) }
          def price
          end

          sig { params(_: Integer).returns(Integer) }
          def price=(_)
          end

          # Indicates if purchasing power parity adjustments are applied to the price.
          #   Purchasing power parity feature is not available as of now
          sig { returns(T::Boolean) }
          def purchasing_power_parity
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def purchasing_power_parity=(_)
          end

          # Number of units for the subscription period. For example, a value of `12` with a
          #   `subscription_period_interval` of `month` represents a one-year subscription.
          sig { returns(Integer) }
          def subscription_period_count
          end

          sig { params(_: Integer).returns(Integer) }
          def subscription_period_count=(_)
          end

          sig { returns(Symbol) }
          def subscription_period_interval
          end

          sig { params(_: Symbol).returns(Symbol) }
          def subscription_period_interval=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          # Indicates if the price is tax inclusive
          sig { returns(T.nilable(T::Boolean)) }
          def tax_inclusive
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def tax_inclusive=(_)
          end

          # Number of days for the trial period. A value of `0` indicates no trial period.
          sig { returns(T.nilable(Integer)) }
          def trial_period_days
          end

          sig { params(_: Integer).returns(Integer) }
          def trial_period_days=(_)
          end

          sig do
            params(
              currency: Symbol,
              discount: Float,
              payment_frequency_count: Integer,
              payment_frequency_interval: Symbol,
              price: Integer,
              purchasing_power_parity: T::Boolean,
              subscription_period_count: Integer,
              subscription_period_interval: Symbol,
              tax_inclusive: T.nilable(T::Boolean),
              trial_period_days: Integer,
              type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            currency:,
            discount:,
            payment_frequency_count:,
            payment_frequency_interval:,
            price:,
            purchasing_power_parity:,
            subscription_period_count:,
            subscription_period_interval:,
            tax_inclusive: nil,
            trial_period_days: nil,
            type: :recurring_price
          )
          end

          sig do
            override
              .returns(
                {
                  currency: Symbol,
                  discount: Float,
                  payment_frequency_count: Integer,
                  payment_frequency_interval: Symbol,
                  price: Integer,
                  purchasing_power_parity: T::Boolean,
                  subscription_period_count: Integer,
                  subscription_period_interval: Symbol,
                  type: Symbol,
                  tax_inclusive: T.nilable(T::Boolean),
                  trial_period_days: Integer
                }
              )
          end
          def to_hash
          end

          class Currency < DodoPayments::Enum
            abstract!

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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class PaymentFrequencyInterval < DodoPayments::Enum
            abstract!

            DAY = :Day
            WEEK = :Week
            MONTH = :Month
            YEAR = :Year

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class SubscriptionPeriodInterval < DodoPayments::Enum
            abstract!

            DAY = :Day
            WEEK = :Week
            MONTH = :Month
            YEAR = :Year

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class << self
          sig do
            override
              .returns(
                [DodoPayments::Models::ProductListResponse::PriceDetail::OneTimePrice, DodoPayments::Models::ProductListResponse::PriceDetail::RecurringPrice]
              )
          end
          def variants
          end
        end
      end
    end
  end
end

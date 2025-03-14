# typed: strong

module DodoPayments
  module Models
    class ProductCreateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      sig do
        returns(
          T.any(
            DodoPayments::Models::ProductCreateParams::Price::OneTimePrice,
            DodoPayments::Models::ProductCreateParams::Price::RecurringPrice
          )
        )
      end
      def price
      end

      sig do
        params(
          _: T.any(
            DodoPayments::Models::ProductCreateParams::Price::OneTimePrice,
            DodoPayments::Models::ProductCreateParams::Price::RecurringPrice
          )
        )
          .returns(
            T.any(
              DodoPayments::Models::ProductCreateParams::Price::OneTimePrice,
              DodoPayments::Models::ProductCreateParams::Price::RecurringPrice
            )
          )
      end
      def price=(_)
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      sig { returns(Symbol) }
      def tax_category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def tax_category=(_)
      end

      # Addons available for subscription product
      sig { returns(T.nilable(T::Array[String])) }
      def addons
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def addons=(_)
      end

      # Optional description of the product
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # Optional message displayed during license key activation
      sig { returns(T.nilable(String)) }
      def license_key_activation_message
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def license_key_activation_message=(_)
      end

      # The number of times the license key can be activated. Must be 0 or greater
      sig { returns(T.nilable(Integer)) }
      def license_key_activations_limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def license_key_activations_limit=(_)
      end

      sig { returns(T.nilable(DodoPayments::Models::ProductCreateParams::LicenseKeyDuration)) }
      def license_key_duration
      end

      sig do
        params(_: T.nilable(DodoPayments::Models::ProductCreateParams::LicenseKeyDuration))
          .returns(T.nilable(DodoPayments::Models::ProductCreateParams::LicenseKeyDuration))
      end
      def license_key_duration=(_)
      end

      # When true, generates and sends a license key to your customer. Defaults to false
      sig { returns(T.nilable(T::Boolean)) }
      def license_key_enabled
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def license_key_enabled=(_)
      end

      # Optional name of the product
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig do
        params(
          price: T.any(
            DodoPayments::Models::ProductCreateParams::Price::OneTimePrice,
            DodoPayments::Models::ProductCreateParams::Price::RecurringPrice
          ),
          tax_category: Symbol,
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(DodoPayments::Models::ProductCreateParams::LicenseKeyDuration),
          license_key_enabled: T.nilable(T::Boolean),
          name: T.nilable(String),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        price:,
        tax_category:,
        addons: nil,
        description: nil,
        license_key_activation_message: nil,
        license_key_activations_limit: nil,
        license_key_duration: nil,
        license_key_enabled: nil,
        name: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              price: T.any(
                DodoPayments::Models::ProductCreateParams::Price::OneTimePrice,
                DodoPayments::Models::ProductCreateParams::Price::RecurringPrice
              ),
              tax_category: Symbol,
              addons: T.nilable(T::Array[String]),
              description: T.nilable(String),
              license_key_activation_message: T.nilable(String),
              license_key_activations_limit: T.nilable(Integer),
              license_key_duration: T.nilable(DodoPayments::Models::ProductCreateParams::LicenseKeyDuration),
              license_key_enabled: T.nilable(T::Boolean),
              name: T.nilable(String),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Price < DodoPayments::Union
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
                [DodoPayments::Models::ProductCreateParams::Price::OneTimePrice, DodoPayments::Models::ProductCreateParams::Price::RecurringPrice]
              )
          end
          def variants
          end
        end
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

      class LicenseKeyDuration < DodoPayments::BaseModel
        sig { returns(Integer) }
        def count
        end

        sig { params(_: Integer).returns(Integer) }
        def count=(_)
        end

        sig { returns(Symbol) }
        def interval
        end

        sig { params(_: Symbol).returns(Symbol) }
        def interval=(_)
        end

        sig { params(count: Integer, interval: Symbol).returns(T.attached_class) }
        def self.new(count:, interval:)
        end

        sig { override.returns({count: Integer, interval: Symbol}) }
        def to_hash
        end

        class Interval < DodoPayments::Enum
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
    end
  end
end

# frozen_string_literal: true

module DodoPayments
  module Models
    class Product < DodoPayments::BaseModel
      # @!attribute business_id
      #   Unique identifier for the business to which the product belongs.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Timestamp when the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_recurring
      #   Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @return [Boolean]
      required :is_recurring, DodoPayments::BooleanModel

      # @!attribute license_key_enabled
      #   Indicates whether the product requires a license key.
      #
      #   @return [Boolean]
      required :license_key_enabled, DodoPayments::BooleanModel

      # @!attribute price
      #
      #   @return [DodoPayments::Models::Product::Price::OneTimePrice, DodoPayments::Models::Product::Price::RecurringPrice]
      required :price, union: -> { DodoPayments::Models::Product::Price }

      # @!attribute product_id
      #   Unique identifier for the product.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #     and services.
      #
      #   @return [Symbol, DodoPayments::Models::Product::TaxCategory]
      required :tax_category, enum: -> { DodoPayments::Models::Product::TaxCategory }

      # @!attribute updated_at
      #   Timestamp when the product was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Description of the product, optional.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   URL of the product image, optional.
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute license_key_activation_message
      #   Message sent upon license key activation, if applicable.
      #
      #   @return [String, nil]
      optional :license_key_activation_message, String, nil?: true

      # @!attribute license_key_activations_limit
      #   Limit on the number of activations for the license key, if enabled.
      #
      #   @return [Integer, nil]
      optional :license_key_activations_limit, Integer, nil?: true

      # @!attribute license_key_duration
      #
      #   @return [DodoPayments::Models::Product::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { DodoPayments::Models::Product::LicenseKeyDuration }, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!parse
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param is_recurring [Boolean]
      #   # @param license_key_enabled [Boolean]
      #   # @param price [DodoPayments::Models::Product::Price::OneTimePrice, DodoPayments::Models::Product::Price::RecurringPrice]
      #   # @param product_id [String]
      #   # @param tax_category [Symbol, DodoPayments::Models::Product::TaxCategory]
      #   # @param updated_at [Time]
      #   # @param description [String, nil]
      #   # @param image [String, nil]
      #   # @param license_key_activation_message [String, nil]
      #   # @param license_key_activations_limit [Integer, nil]
      #   # @param license_key_duration [DodoPayments::Models::Product::LicenseKeyDuration, nil]
      #   # @param name [String, nil]
      #   #
      #   def initialize(
      #     business_id:,
      #     created_at:,
      #     is_recurring:,
      #     license_key_enabled:,
      #     price:,
      #     product_id:,
      #     tax_category:,
      #     updated_at:,
      #     description: nil,
      #     image: nil,
      #     license_key_activation_message: nil,
      #     license_key_activations_limit: nil,
      #     license_key_duration: nil,
      #     name: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      class Price < DodoPayments::Union
        discriminator :type

        variant :one_time_price, -> { DodoPayments::Models::Product::Price::OneTimePrice }

        variant :recurring_price, -> { DodoPayments::Models::Product::Price::RecurringPrice }

        class OneTimePrice < DodoPayments::BaseModel
          # @!attribute currency
          #
          #   @return [Symbol, DodoPayments::Models::Product::Price::OneTimePrice::Currency]
          required :currency, enum: -> { DodoPayments::Models::Product::Price::OneTimePrice::Currency }

          # @!attribute discount
          #   Discount applied to the price, represented as a percentage (0 to 100).
          #
          #   @return [Float]
          required :discount, Float

          # @!attribute price
          #   The payment amount, in the smallest denomination of the currency (e.g., cents
          #     for USD). For example, to charge $1.00, pass `100`.
          #
          #     If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
          #     represents the **minimum** amount the customer must pay.
          #
          #   @return [Integer]
          required :price, Integer

          # @!attribute purchasing_power_parity
          #   Indicates if purchasing power parity adjustments are applied to the price.
          #     Purchasing power parity feature is not available as of now.
          #
          #   @return [Boolean]
          required :purchasing_power_parity, DodoPayments::BooleanModel

          # @!attribute type
          #
          #   @return [Symbol, :one_time_price]
          required :type, const: :one_time_price

          # @!attribute [r] pay_what_you_want
          #   Indicates whether the customer can pay any amount they choose. If set to `true`,
          #     the [`price`](Self::price) field is the minimum amount.
          #
          #   @return [Boolean, nil]
          optional :pay_what_you_want, DodoPayments::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :pay_what_you_want

          # @!attribute suggested_price
          #   A suggested price for the user to pay. This value is only considered if
          #     [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
          #     ignored.
          #
          #   @return [Integer, nil]
          optional :suggested_price, Integer, nil?: true

          # @!attribute tax_inclusive
          #   Indicates if the price is tax inclusive.
          #
          #   @return [Boolean, nil]
          optional :tax_inclusive, DodoPayments::BooleanModel, nil?: true

          # @!parse
          #   # @param currency [Symbol, DodoPayments::Models::Product::Price::OneTimePrice::Currency]
          #   # @param discount [Float]
          #   # @param price [Integer]
          #   # @param purchasing_power_parity [Boolean]
          #   # @param pay_what_you_want [Boolean]
          #   # @param suggested_price [Integer, nil]
          #   # @param tax_inclusive [Boolean, nil]
          #   # @param type [Symbol, :one_time_price]
          #   #
          #   def initialize(
          #     currency:,
          #     discount:,
          #     price:,
          #     purchasing_power_parity:,
          #     pay_what_you_want: nil,
          #     suggested_price: nil,
          #     tax_inclusive: nil,
          #     type: :one_time_price,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | DodoPayments::BaseModel) -> void

          # @abstract
          class Currency < DodoPayments::Enum
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

            finalize!
          end
        end

        class RecurringPrice < DodoPayments::BaseModel
          # @!attribute currency
          #
          #   @return [Symbol, DodoPayments::Models::Product::Price::RecurringPrice::Currency]
          required :currency, enum: -> { DodoPayments::Models::Product::Price::RecurringPrice::Currency }

          # @!attribute discount
          #   Discount applied to the price, represented as a percentage (0 to 100).
          #
          #   @return [Float]
          required :discount, Float

          # @!attribute payment_frequency_count
          #   Number of units for the payment frequency. For example, a value of `1` with a
          #     `payment_frequency_interval` of `month` represents monthly payments.
          #
          #   @return [Integer]
          required :payment_frequency_count, Integer

          # @!attribute payment_frequency_interval
          #
          #   @return [Symbol, DodoPayments::Models::Product::Price::RecurringPrice::PaymentFrequencyInterval]
          required :payment_frequency_interval,
                   enum: -> { DodoPayments::Models::Product::Price::RecurringPrice::PaymentFrequencyInterval }

          # @!attribute price
          #   The payment amount. Represented in the lowest denomination of the currency
          #     (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          #
          #   @return [Integer]
          required :price, Integer

          # @!attribute purchasing_power_parity
          #   Indicates if purchasing power parity adjustments are applied to the price.
          #     Purchasing power parity feature is not available as of now
          #
          #   @return [Boolean]
          required :purchasing_power_parity, DodoPayments::BooleanModel

          # @!attribute subscription_period_count
          #   Number of units for the subscription period. For example, a value of `12` with a
          #     `subscription_period_interval` of `month` represents a one-year subscription.
          #
          #   @return [Integer]
          required :subscription_period_count, Integer

          # @!attribute subscription_period_interval
          #
          #   @return [Symbol, DodoPayments::Models::Product::Price::RecurringPrice::SubscriptionPeriodInterval]
          required :subscription_period_interval,
                   enum: -> { DodoPayments::Models::Product::Price::RecurringPrice::SubscriptionPeriodInterval }

          # @!attribute type
          #
          #   @return [Symbol, :recurring_price]
          required :type, const: :recurring_price

          # @!attribute tax_inclusive
          #   Indicates if the price is tax inclusive
          #
          #   @return [Boolean, nil]
          optional :tax_inclusive, DodoPayments::BooleanModel, nil?: true

          # @!attribute [r] trial_period_days
          #   Number of days for the trial period. A value of `0` indicates no trial period.
          #
          #   @return [Integer, nil]
          optional :trial_period_days, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :trial_period_days

          # @!parse
          #   # @param currency [Symbol, DodoPayments::Models::Product::Price::RecurringPrice::Currency]
          #   # @param discount [Float]
          #   # @param payment_frequency_count [Integer]
          #   # @param payment_frequency_interval [Symbol, DodoPayments::Models::Product::Price::RecurringPrice::PaymentFrequencyInterval]
          #   # @param price [Integer]
          #   # @param purchasing_power_parity [Boolean]
          #   # @param subscription_period_count [Integer]
          #   # @param subscription_period_interval [Symbol, DodoPayments::Models::Product::Price::RecurringPrice::SubscriptionPeriodInterval]
          #   # @param tax_inclusive [Boolean, nil]
          #   # @param trial_period_days [Integer]
          #   # @param type [Symbol, :recurring_price]
          #   #
          #   def initialize(
          #     currency:,
          #     discount:,
          #     payment_frequency_count:,
          #     payment_frequency_interval:,
          #     price:,
          #     purchasing_power_parity:,
          #     subscription_period_count:,
          #     subscription_period_interval:,
          #     tax_inclusive: nil,
          #     trial_period_days: nil,
          #     type: :recurring_price,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | DodoPayments::BaseModel) -> void

          # @abstract
          class Currency < DodoPayments::Enum
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

            finalize!
          end

          # @abstract
          class PaymentFrequencyInterval < DodoPayments::Enum
            DAY = :Day
            WEEK = :Week
            MONTH = :Month
            YEAR = :Year

            finalize!
          end

          # @abstract
          class SubscriptionPeriodInterval < DodoPayments::Enum
            DAY = :Day
            WEEK = :Week
            MONTH = :Month
            YEAR = :Year

            finalize!
          end
        end

        # @!parse
        #   class << self
        #     # @return [Array(DodoPayments::Models::Product::Price::OneTimePrice, DodoPayments::Models::Product::Price::RecurringPrice)]
        #     def variants; end
        #   end
      end

      # @abstract
      #
      # Represents the different categories of taxation applicable to various products
      #   and services.
      class TaxCategory < DodoPayments::Enum
        DIGITAL_PRODUCTS = :digital_products
        SAAS = :saas
        E_BOOK = :e_book
        EDTECH = :edtech

        finalize!
      end

      class LicenseKeyDuration < DodoPayments::BaseModel
        # @!attribute count
        #
        #   @return [Integer]
        required :count, Integer

        # @!attribute interval
        #
        #   @return [Symbol, DodoPayments::Models::Product::LicenseKeyDuration::Interval]
        required :interval, enum: -> { DodoPayments::Models::Product::LicenseKeyDuration::Interval }

        # @!parse
        #   # @param count [Integer]
        #   # @param interval [Symbol, DodoPayments::Models::Product::LicenseKeyDuration::Interval]
        #   #
        #   def initialize(count:, interval:, **) = super

        # def initialize: (Hash | DodoPayments::BaseModel) -> void

        # @abstract
        class Interval < DodoPayments::Enum
          DAY = :Day
          WEEK = :Week
          MONTH = :Month
          YEAR = :Year

          finalize!
        end
      end
    end
  end
end

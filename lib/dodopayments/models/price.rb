# frozen_string_literal: true

module Dodopayments
  module Models
    module Price
      extend Dodopayments::Union

      discriminator :type

      variant :one_time_price, -> { Dodopayments::Models::Price::OneTimePrice }

      variant :recurring_price, -> { Dodopayments::Models::Price::RecurringPrice }

      class OneTimePrice < Dodopayments::BaseModel
        # @!attribute currency
        #
        #   @return [Symbol, Dodopayments::Models::Price::OneTimePrice::Currency]
        required :currency, enum: -> { Dodopayments::Models::Price::OneTimePrice::Currency }

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
        required :purchasing_power_parity, Dodopayments::BooleanModel

        # @!attribute type
        #
        #   @return [Symbol, :one_time_price]
        required :type, const: :one_time_price

        # @!attribute [r] pay_what_you_want
        #   Indicates whether the customer can pay any amount they choose. If set to `true`,
        #     the [`price`](Self::price) field is the minimum amount.
        #
        #   @return [Boolean, nil]
        optional :pay_what_you_want, Dodopayments::BooleanModel

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
        optional :tax_inclusive, Dodopayments::BooleanModel, nil?: true

        # @!parse
        #   # @param currency [Symbol, Dodopayments::Models::Price::OneTimePrice::Currency]
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

        # def initialize: (Hash | Dodopayments::BaseModel) -> void

        module Currency
          extend Dodopayments::Enum

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

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end
      end

      class RecurringPrice < Dodopayments::BaseModel
        # @!attribute currency
        #
        #   @return [Symbol, Dodopayments::Models::Price::RecurringPrice::Currency]
        required :currency, enum: -> { Dodopayments::Models::Price::RecurringPrice::Currency }

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
        #   @return [Symbol, Dodopayments::Models::TimeInterval]
        required :payment_frequency_interval, enum: -> { Dodopayments::Models::TimeInterval }

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
        required :purchasing_power_parity, Dodopayments::BooleanModel

        # @!attribute subscription_period_count
        #   Number of units for the subscription period. For example, a value of `12` with a
        #     `subscription_period_interval` of `month` represents a one-year subscription.
        #
        #   @return [Integer]
        required :subscription_period_count, Integer

        # @!attribute subscription_period_interval
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval]
        required :subscription_period_interval, enum: -> { Dodopayments::Models::TimeInterval }

        # @!attribute type
        #
        #   @return [Symbol, :recurring_price]
        required :type, const: :recurring_price

        # @!attribute tax_inclusive
        #   Indicates if the price is tax inclusive
        #
        #   @return [Boolean, nil]
        optional :tax_inclusive, Dodopayments::BooleanModel, nil?: true

        # @!attribute [r] trial_period_days
        #   Number of days for the trial period. A value of `0` indicates no trial period.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :trial_period_days

        # @!parse
        #   # @param currency [Symbol, Dodopayments::Models::Price::RecurringPrice::Currency]
        #   # @param discount [Float]
        #   # @param payment_frequency_count [Integer]
        #   # @param payment_frequency_interval [Symbol, Dodopayments::Models::TimeInterval]
        #   # @param price [Integer]
        #   # @param purchasing_power_parity [Boolean]
        #   # @param subscription_period_count [Integer]
        #   # @param subscription_period_interval [Symbol, Dodopayments::Models::TimeInterval]
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

        # def initialize: (Hash | Dodopayments::BaseModel) -> void

        module Currency
          extend Dodopayments::Enum

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

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end
      end

      # @!parse
      #   class << self
      #     # @return [Array(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)]
      #     def variants; end
      #   end
    end
  end
end

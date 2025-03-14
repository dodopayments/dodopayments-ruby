# typed: strong

module Dodopayments
  module Models
    class Subscription < Dodopayments::BaseModel
      # Timestamp when the subscription was created
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      def customer
      end

      sig do
        params(_: Dodopayments::Models::CustomerLimitedDetails)
          .returns(Dodopayments::Models::CustomerLimitedDetails)
      end
      def customer=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Timestamp of the next scheduled billing
      sig { returns(Time) }
      def next_billing_date
      end

      sig { params(_: Time).returns(Time) }
      def next_billing_date=(_)
      end

      # Number of payment frequency intervals
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

      # Identifier of the product associated with this subscription
      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      # Number of units/items included in the subscription
      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      # Amount charged before tax for each recurring payment in smallest currency unit
      #   (e.g. cents)
      sig { returns(Integer) }
      def recurring_pre_tax_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def recurring_pre_tax_amount=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Unique identifier for the subscription
      sig { returns(String) }
      def subscription_id
      end

      sig { params(_: String).returns(String) }
      def subscription_id=(_)
      end

      # Number of subscription period intervals
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

      # Indicates if the recurring_pre_tax_amount is tax inclusive
      sig { returns(T::Boolean) }
      def tax_inclusive
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def tax_inclusive=(_)
      end

      # Number of days in the trial period (0 if no trial)
      sig { returns(Integer) }
      def trial_period_days
      end

      sig { params(_: Integer).returns(Integer) }
      def trial_period_days=(_)
      end

      # Cancelled timestamp if the subscription is cancelled
      sig { returns(T.nilable(Time)) }
      def cancelled_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def cancelled_at=(_)
      end

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      def discount_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def discount_id=(_)
      end

      # Response struct representing subscription details
      sig do
        params(
          created_at: Time,
          currency: Symbol,
          customer: Dodopayments::Models::CustomerLimitedDetails,
          metadata: T::Hash[Symbol, String],
          next_billing_date: Time,
          payment_frequency_count: Integer,
          payment_frequency_interval: Symbol,
          product_id: String,
          quantity: Integer,
          recurring_pre_tax_amount: Integer,
          status: Symbol,
          subscription_id: String,
          subscription_period_count: Integer,
          subscription_period_interval: Symbol,
          tax_inclusive: T::Boolean,
          trial_period_days: Integer,
          cancelled_at: T.nilable(Time),
          discount_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at:,
        currency:,
        customer:,
        metadata:,
        next_billing_date:,
        payment_frequency_count:,
        payment_frequency_interval:,
        product_id:,
        quantity:,
        recurring_pre_tax_amount:,
        status:,
        subscription_id:,
        subscription_period_count:,
        subscription_period_interval:,
        tax_inclusive:,
        trial_period_days:,
        cancelled_at: nil,
        discount_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              created_at: Time,
              currency: Symbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              metadata: T::Hash[Symbol, String],
              next_billing_date: Time,
              payment_frequency_count: Integer,
              payment_frequency_interval: Symbol,
              product_id: String,
              quantity: Integer,
              recurring_pre_tax_amount: Integer,
              status: Symbol,
              subscription_id: String,
              subscription_period_count: Integer,
              subscription_period_interval: Symbol,
              tax_inclusive: T::Boolean,
              trial_period_days: Integer,
              cancelled_at: T.nilable(Time),
              discount_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class Currency < Dodopayments::Enum
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
  end
end

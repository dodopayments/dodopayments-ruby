# typed: strong

module Dodopayments
  module Models
    class Subscription < Dodopayments::Internal::Type::BaseModel
      sig { returns(Dodopayments::Models::BillingAddress) }
      attr_reader :billing

      sig { params(billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash)).void }
      attr_writer :billing

      # Timestamp when the subscription was created
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Models::Subscription::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash)).void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Timestamp of the next scheduled billing
      sig { returns(Time) }
      attr_accessor :next_billing_date

      # Number of payment frequency intervals
      sig { returns(Integer) }
      attr_accessor :payment_frequency_count

      sig { returns(Dodopayments::Models::TimeInterval::TaggedSymbol) }
      attr_accessor :payment_frequency_interval

      # Identifier of the product associated with this subscription
      sig { returns(String) }
      attr_accessor :product_id

      # Number of units/items included in the subscription
      sig { returns(Integer) }
      attr_accessor :quantity

      # Amount charged before tax for each recurring payment in smallest currency unit
      # (e.g. cents)
      sig { returns(Integer) }
      attr_accessor :recurring_pre_tax_amount

      sig { returns(Dodopayments::Models::SubscriptionStatus::TaggedSymbol) }
      attr_accessor :status

      # Unique identifier for the subscription
      sig { returns(String) }
      attr_accessor :subscription_id

      # Number of subscription period intervals
      sig { returns(Integer) }
      attr_accessor :subscription_period_count

      sig { returns(Dodopayments::Models::TimeInterval::TaggedSymbol) }
      attr_accessor :subscription_period_interval

      # Indicates if the recurring_pre_tax_amount is tax inclusive
      sig { returns(T::Boolean) }
      attr_accessor :tax_inclusive

      # Number of days in the trial period (0 if no trial)
      sig { returns(Integer) }
      attr_accessor :trial_period_days

      # Cancelled timestamp if the subscription is cancelled
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # Response struct representing subscription details
      sig do
        params(
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash),
          created_at: Time,
          currency: Dodopayments::Models::Subscription::Currency::OrSymbol,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
          metadata: T::Hash[Symbol, String],
          next_billing_date: Time,
          payment_frequency_count: Integer,
          payment_frequency_interval: Dodopayments::Models::TimeInterval::OrSymbol,
          product_id: String,
          quantity: Integer,
          recurring_pre_tax_amount: Integer,
          status: Dodopayments::Models::SubscriptionStatus::OrSymbol,
          subscription_id: String,
          subscription_period_count: Integer,
          subscription_period_interval: Dodopayments::Models::TimeInterval::OrSymbol,
          tax_inclusive: T::Boolean,
          trial_period_days: Integer,
          cancelled_at: T.nilable(Time),
          discount_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
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
      ); end
      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              created_at: Time,
              currency: Dodopayments::Models::Subscription::Currency::TaggedSymbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              metadata: T::Hash[Symbol, String],
              next_billing_date: Time,
              payment_frequency_count: Integer,
              payment_frequency_interval: Dodopayments::Models::TimeInterval::TaggedSymbol,
              product_id: String,
              quantity: Integer,
              recurring_pre_tax_amount: Integer,
              status: Dodopayments::Models::SubscriptionStatus::TaggedSymbol,
              subscription_id: String,
              subscription_period_count: Integer,
              subscription_period_interval: Dodopayments::Models::TimeInterval::TaggedSymbol,
              tax_inclusive: T::Boolean,
              trial_period_days: Integer,
              cancelled_at: T.nilable(Time),
              discount_id: T.nilable(String)
            }
          )
      end
      def to_hash; end

      module Currency
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Subscription::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED = T.let(:AED, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::Subscription::Currency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::Subscription::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::Subscription::Currency::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end

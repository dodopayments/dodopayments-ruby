# typed: strong

module Dodopayments
  module Models
    class Refund < Dodopayments::Internal::Type::BaseModel
      # The unique identifier of the business issuing the refund.
      sig { returns(String) }
      attr_accessor :business_id

      # The timestamp of when the refund was created in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The unique identifier of the payment associated with the refund.
      sig { returns(String) }
      attr_accessor :payment_id

      # The unique identifier of the refund.
      sig { returns(String) }
      attr_accessor :refund_id

      sig { returns(Dodopayments::Models::RefundStatus::TaggedSymbol) }
      attr_accessor :status

      # The refunded amount.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig { returns(T.nilable(Dodopayments::Models::Refund::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The reason provided for the refund, if any. Optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          business_id: String,
          created_at: Time,
          payment_id: String,
          refund_id: String,
          status: Dodopayments::Models::RefundStatus::OrSymbol,
          amount: T.nilable(Integer),
          currency: T.nilable(Dodopayments::Models::Refund::Currency::OrSymbol),
          reason: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the business issuing the refund.
        business_id:,
        # The timestamp of when the refund was created in UTC.
        created_at:,
        # The unique identifier of the payment associated with the refund.
        payment_id:,
        # The unique identifier of the refund.
        refund_id:,
        status:,
        # The refunded amount.
        amount: nil,
        currency: nil,
        # The reason provided for the refund, if any. Optional.
        reason: nil
      ); end
      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              payment_id: String,
              refund_id: String,
              status: Dodopayments::Models::RefundStatus::TaggedSymbol,
              amount: T.nilable(Integer),
              currency: T.nilable(Dodopayments::Models::Refund::Currency::TaggedSymbol),
              reason: T.nilable(String)
            }
          )
      end
      def to_hash; end

      module Currency
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Refund::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED = T.let(:AED, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::Refund::Currency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::Refund::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::Refund::Currency::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end

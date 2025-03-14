# typed: strong

module DodoPayments
  module Models
    class Refund < DodoPayments::BaseModel
      # The unique identifier of the business issuing the refund.
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # The timestamp of when the refund was created in UTC.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The unique identifier of the payment associated with the refund.
      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      # The unique identifier of the refund.
      sig { returns(String) }
      def refund_id
      end

      sig { params(_: String).returns(String) }
      def refund_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The refunded amount.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def currency
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def currency=(_)
      end

      # The reason provided for the refund, if any. Optional.
      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      sig do
        params(
          business_id: String,
          created_at: Time,
          payment_id: String,
          refund_id: String,
          status: Symbol,
          amount: T.nilable(Integer),
          currency: T.nilable(Symbol),
          reason: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(business_id:, created_at:, payment_id:, refund_id:, status:, amount: nil, currency: nil, reason: nil)
      end

      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              payment_id: String,
              refund_id: String,
              status: Symbol,
              amount: T.nilable(Integer),
              currency: T.nilable(Symbol),
              reason: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class Status < DodoPayments::Enum
        abstract!

        SUCCEEDED = :succeeded
        FAILED = :failed
        PENDING = :pending
        REVIEW = :review

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
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class PaymentListResponse < Dodopayments::BaseModel
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
          .returns(Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      def customer
      end

      sig do
        params(
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      sig { returns(Integer) }
      def total_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def total_amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_method
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_method_type
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method_type=(_)
      end

      sig { returns(T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol)) }
      def status
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol))
          .returns(T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol))
      end
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def subscription_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def subscription_id=(_)
      end

      sig do
        params(
          created_at: Time,
          currency: Dodopayments::Models::PaymentListResponse::Currency::OrSymbol,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::Util::AnyHash),
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          total_amount: Integer,
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          status: T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol),
          subscription_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at:,
        currency:,
        customer:,
        metadata:,
        payment_id:,
        total_amount:,
        payment_method: nil,
        payment_method_type: nil,
        status: nil,
        subscription_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              created_at: Time,
              currency: Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              total_amount: Integer,
              payment_method: T.nilable(String),
              payment_method_type: T.nilable(String),
              status: T.nilable(Dodopayments::Models::IntentStatus::TaggedSymbol),
              subscription_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      module Currency
        extend Dodopayments::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::PaymentListResponse::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol) }

        AED = T.let(:AED, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Dodopayments::Models::PaymentListResponse::Currency::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end

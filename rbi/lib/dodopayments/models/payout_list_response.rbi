# typed: strong

module Dodopayments
  module Models
    class PayoutListResponse < Dodopayments::Internal::Type::BaseModel
      # The total amount of the payout.
      sig { returns(Integer) }
      attr_accessor :amount

      # The unique identifier of the business associated with the payout.
      sig { returns(String) }
      attr_accessor :business_id

      # The total value of chargebacks associated with the payout.
      sig { returns(Integer) }
      attr_accessor :chargebacks

      # The timestamp when the payout was created, in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The fee charged for processing the payout.
      sig { returns(Integer) }
      attr_accessor :fee

      # The payment method used for the payout (e.g., bank transfer, card, etc.).
      sig { returns(String) }
      attr_accessor :payment_method

      # The unique identifier of the payout.
      sig { returns(String) }
      attr_accessor :payout_id

      # The total value of refunds associated with the payout.
      sig { returns(Integer) }
      attr_accessor :refunds

      sig { returns(Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # The tax applied to the payout.
      sig { returns(Integer) }
      attr_accessor :tax

      # The timestamp when the payout was last updated, in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The name of the payout recipient or purpose.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The URL of the document associated with the payout.
      sig { returns(T.nilable(String)) }
      attr_accessor :payout_document_url

      # Any additional remarks or notes associated with the payout.
      sig { returns(T.nilable(String)) }
      attr_accessor :remarks

      sig do
        params(
          amount: Integer,
          business_id: String,
          chargebacks: Integer,
          created_at: Time,
          currency: Dodopayments::Models::PayoutListResponse::Currency::OrSymbol,
          fee: Integer,
          payment_method: String,
          payout_id: String,
          refunds: Integer,
          status: Dodopayments::Models::PayoutListResponse::Status::OrSymbol,
          tax: Integer,
          updated_at: Time,
          name: T.nilable(String),
          payout_document_url: T.nilable(String),
          remarks: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        business_id:,
        chargebacks:,
        created_at:,
        currency:,
        fee:,
        payment_method:,
        payout_id:,
        refunds:,
        status:,
        tax:,
        updated_at:,
        name: nil,
        payout_document_url: nil,
        remarks: nil
      ); end
      sig do
        override
          .returns(
            {
              amount: Integer,
              business_id: String,
              chargebacks: Integer,
              created_at: Time,
              currency: Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol,
              fee: Integer,
              payment_method: String,
              payout_id: String,
              refunds: Integer,
              status: Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol,
              tax: Integer,
              updated_at: Time,
              name: T.nilable(String),
              payout_document_url: T.nilable(String),
              remarks: T.nilable(String)
            }
          )
      end
      def to_hash; end

      module Currency
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::PayoutListResponse::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED = T.let(:AED, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        ALL = T.let(:ALL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        AMD = T.let(:AMD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        ANG = T.let(:ANG, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        AOA = T.let(:AOA, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        ARS = T.let(:ARS, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        AUD = T.let(:AUD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        AWG = T.let(:AWG, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        AZN = T.let(:AZN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BAM = T.let(:BAM, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BBD = T.let(:BBD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BDT = T.let(:BDT, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BGN = T.let(:BGN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BHD = T.let(:BHD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BIF = T.let(:BIF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BMD = T.let(:BMD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BND = T.let(:BND, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BOB = T.let(:BOB, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BRL = T.let(:BRL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BSD = T.let(:BSD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BWP = T.let(:BWP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BYN = T.let(:BYN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        BZD = T.let(:BZD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CAD = T.let(:CAD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CHF = T.let(:CHF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CLP = T.let(:CLP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CNY = T.let(:CNY, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        COP = T.let(:COP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CRC = T.let(:CRC, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CUP = T.let(:CUP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CVE = T.let(:CVE, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        CZK = T.let(:CZK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        DJF = T.let(:DJF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        DKK = T.let(:DKK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        DOP = T.let(:DOP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        DZD = T.let(:DZD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        EGP = T.let(:EGP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        ETB = T.let(:ETB, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        EUR = T.let(:EUR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        FJD = T.let(:FJD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        FKP = T.let(:FKP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GBP = T.let(:GBP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GEL = T.let(:GEL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GHS = T.let(:GHS, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GIP = T.let(:GIP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GMD = T.let(:GMD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GNF = T.let(:GNF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GTQ = T.let(:GTQ, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        GYD = T.let(:GYD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        HKD = T.let(:HKD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        HNL = T.let(:HNL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        HRK = T.let(:HRK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        HTG = T.let(:HTG, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        HUF = T.let(:HUF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        IDR = T.let(:IDR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        ILS = T.let(:ILS, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        INR = T.let(:INR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        IQD = T.let(:IQD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        JMD = T.let(:JMD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        JOD = T.let(:JOD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        JPY = T.let(:JPY, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KES = T.let(:KES, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KGS = T.let(:KGS, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KHR = T.let(:KHR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KMF = T.let(:KMF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KRW = T.let(:KRW, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KWD = T.let(:KWD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KYD = T.let(:KYD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        KZT = T.let(:KZT, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        LAK = T.let(:LAK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        LBP = T.let(:LBP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        LKR = T.let(:LKR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        LRD = T.let(:LRD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        LSL = T.let(:LSL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        LYD = T.let(:LYD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MAD = T.let(:MAD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MDL = T.let(:MDL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MGA = T.let(:MGA, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MKD = T.let(:MKD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MMK = T.let(:MMK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MNT = T.let(:MNT, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MOP = T.let(:MOP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MRU = T.let(:MRU, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MUR = T.let(:MUR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MVR = T.let(:MVR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MWK = T.let(:MWK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MXN = T.let(:MXN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MYR = T.let(:MYR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        MZN = T.let(:MZN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        NAD = T.let(:NAD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        NGN = T.let(:NGN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        NIO = T.let(:NIO, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        NOK = T.let(:NOK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        NPR = T.let(:NPR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        NZD = T.let(:NZD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        OMR = T.let(:OMR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        PAB = T.let(:PAB, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        PEN = T.let(:PEN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        PGK = T.let(:PGK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        PHP = T.let(:PHP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        PKR = T.let(:PKR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        PLN = T.let(:PLN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        PYG = T.let(:PYG, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        QAR = T.let(:QAR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        RON = T.let(:RON, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        RSD = T.let(:RSD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        RUB = T.let(:RUB, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        RWF = T.let(:RWF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SAR = T.let(:SAR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SBD = T.let(:SBD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SCR = T.let(:SCR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SEK = T.let(:SEK, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SGD = T.let(:SGD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SHP = T.let(:SHP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SLE = T.let(:SLE, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SLL = T.let(:SLL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SOS = T.let(:SOS, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SRD = T.let(:SRD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SSP = T.let(:SSP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        STN = T.let(:STN, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SVC = T.let(:SVC, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        SZL = T.let(:SZL, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        THB = T.let(:THB, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        TND = T.let(:TND, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        TOP = T.let(:TOP, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        TRY = T.let(:TRY, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        TTD = T.let(:TTD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        TWD = T.let(:TWD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        TZS = T.let(:TZS, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        UAH = T.let(:UAH, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        UGX = T.let(:UGX, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        USD = T.let(:USD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        UYU = T.let(:UYU, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        UZS = T.let(:UZS, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        VES = T.let(:VES, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        VND = T.let(:VND, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        VUV = T.let(:VUV, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        WST = T.let(:WST, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        XAF = T.let(:XAF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        XCD = T.let(:XCD, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        XOF = T.let(:XOF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        XPF = T.let(:XPF, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        YER = T.let(:YER, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        ZAR = T.let(:ZAR, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)
        ZMW = T.let(:ZMW, Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::PayoutListResponse::Currency::TaggedSymbol]) }
        def self.values; end
      end

      module Status
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::PayoutListResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_INITIATED = T.let(:not_initiated, Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol)
        IN_PROGRESS = T.let(:in_progress, Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol)
        ON_HOLD = T.let(:on_hold, Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol)
        FAILED = T.let(:failed, Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol)
        SUCCESS = T.let(:success, Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::PayoutListResponse::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end

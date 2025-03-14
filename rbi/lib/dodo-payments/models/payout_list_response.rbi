# typed: strong

module DodoPayments
  module Models
    class PayoutListResponse < DodoPayments::BaseModel
      # The total amount of the payout.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The unique identifier of the business associated with the payout.
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # The total value of chargebacks associated with the payout.
      sig { returns(Integer) }
      def chargebacks
      end

      sig { params(_: Integer).returns(Integer) }
      def chargebacks=(_)
      end

      # The timestamp when the payout was created, in UTC.
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

      # The fee charged for processing the payout.
      sig { returns(Integer) }
      def fee
      end

      sig { params(_: Integer).returns(Integer) }
      def fee=(_)
      end

      # The payment method used for the payout (e.g., bank transfer, card, etc.).
      sig { returns(String) }
      def payment_method
      end

      sig { params(_: String).returns(String) }
      def payment_method=(_)
      end

      # The unique identifier of the payout.
      sig { returns(String) }
      def payout_id
      end

      sig { params(_: String).returns(String) }
      def payout_id=(_)
      end

      # The total value of refunds associated with the payout.
      sig { returns(Integer) }
      def refunds
      end

      sig { params(_: Integer).returns(Integer) }
      def refunds=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The tax applied to the payout.
      sig { returns(Integer) }
      def tax
      end

      sig { params(_: Integer).returns(Integer) }
      def tax=(_)
      end

      # The timestamp when the payout was last updated, in UTC.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # The name of the payout recipient or purpose.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      # The URL of the document associated with the payout.
      sig { returns(T.nilable(String)) }
      def payout_document_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payout_document_url=(_)
      end

      # Any additional remarks or notes associated with the payout.
      sig { returns(T.nilable(String)) }
      def remarks
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remarks=(_)
      end

      sig do
        params(
          amount: Integer,
          business_id: String,
          chargebacks: Integer,
          created_at: Time,
          currency: Symbol,
          fee: Integer,
          payment_method: String,
          payout_id: String,
          refunds: Integer,
          status: Symbol,
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
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              business_id: String,
              chargebacks: Integer,
              created_at: Time,
              currency: Symbol,
              fee: Integer,
              payment_method: String,
              payout_id: String,
              refunds: Integer,
              status: Symbol,
              tax: Integer,
              updated_at: Time,
              name: T.nilable(String),
              payout_document_url: T.nilable(String),
              remarks: T.nilable(String)
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

      class Status < DodoPayments::Enum
        abstract!

        IN_PROGRESS = :in_progress
        FAILED = :failed
        SUCCESS = :success

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end

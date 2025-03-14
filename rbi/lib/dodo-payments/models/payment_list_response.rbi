# typed: strong

module DodoPayments
  module Models
    class PaymentListResponse < DodoPayments::BaseModel
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

      sig { returns(DodoPayments::Models::PaymentListResponse::Customer) }
      def customer
      end

      sig do
        params(_: DodoPayments::Models::PaymentListResponse::Customer)
          .returns(DodoPayments::Models::PaymentListResponse::Customer)
      end
      def customer=(_)
      end

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

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
          currency: Symbol,
          customer: DodoPayments::Models::PaymentListResponse::Customer,
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          total_amount: Integer,
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          status: T.nilable(Symbol),
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
              currency: Symbol,
              customer: DodoPayments::Models::PaymentListResponse::Customer,
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              total_amount: Integer,
              payment_method: T.nilable(String),
              payment_method_type: T.nilable(String),
              status: T.nilable(Symbol),
              subscription_id: T.nilable(String)
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

      class Customer < DodoPayments::BaseModel
        # Unique identifier for the customer
        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        # Email address of the customer
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Full name of the customer
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(customer_id: String, email: String, name: String).returns(T.attached_class) }
        def self.new(customer_id:, email:, name:)
        end

        sig { override.returns({customer_id: String, email: String, name: String}) }
        def to_hash
        end
      end

      class Status < DodoPayments::Enum
        abstract!

        SUCCEEDED = T.let(:succeeded, T.nilable(Symbol))
        FAILED = T.let(:failed, T.nilable(Symbol))
        CANCELLED = T.let(:cancelled, T.nilable(Symbol))
        PROCESSING = T.let(:processing, T.nilable(Symbol))
        REQUIRES_CUSTOMER_ACTION = T.let(:requires_customer_action, T.nilable(Symbol))
        REQUIRES_MERCHANT_ACTION = T.let(:requires_merchant_action, T.nilable(Symbol))
        REQUIRES_PAYMENT_METHOD = T.let(:requires_payment_method, T.nilable(Symbol))
        REQUIRES_CONFIRMATION = T.let(:requires_confirmation, T.nilable(Symbol))
        REQUIRES_CAPTURE = T.let(:requires_capture, T.nilable(Symbol))
        PARTIALLY_CAPTURED = T.let(:partially_captured, T.nilable(Symbol))
        PARTIALLY_CAPTURED_AND_CAPTURABLE = T.let(:partially_captured_and_capturable, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end

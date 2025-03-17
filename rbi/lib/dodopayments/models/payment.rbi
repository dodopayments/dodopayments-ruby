# typed: strong

module Dodopayments
  module Models
    class Payment < Dodopayments::BaseModel
      # Identifier of the business associated with the payment
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # Timestamp when the payment was created
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

      # List of disputes associated with this payment
      sig { returns(T::Array[Dodopayments::Models::Dispute]) }
      def disputes
      end

      sig { params(_: T::Array[Dodopayments::Models::Dispute]).returns(T::Array[Dodopayments::Models::Dispute]) }
      def disputes=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Unique identifier for the payment
      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      # List of refunds issued for this payment
      sig { returns(T::Array[Dodopayments::Models::Refund]) }
      def refunds
      end

      sig { params(_: T::Array[Dodopayments::Models::Refund]).returns(T::Array[Dodopayments::Models::Refund]) }
      def refunds=(_)
      end

      # Total amount charged to the customer including tax, in smallest currency unit
      #   (e.g. cents)
      sig { returns(Integer) }
      def total_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def total_amount=(_)
      end

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      def discount_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def discount_id=(_)
      end

      # An error message if the payment failed
      sig { returns(T.nilable(String)) }
      def error_message
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def error_message=(_)
      end

      # Checkout URL
      sig { returns(T.nilable(String)) }
      def payment_link
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_link=(_)
      end

      # Payment method used by customer (e.g. "card", "bank_transfer")
      sig { returns(T.nilable(String)) }
      def payment_method
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_)
      end

      # Specific type of payment method (e.g. "visa", "mastercard")
      sig { returns(T.nilable(String)) }
      def payment_method_type
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method_type=(_)
      end

      # List of products purchased in a one-time payment
      sig { returns(T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart])) }
      def product_cart
      end

      sig do
        params(_: T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart]))
          .returns(T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart]))
      end
      def product_cart=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def status=(_)
      end

      # Identifier of the subscription if payment is part of a subscription
      sig { returns(T.nilable(String)) }
      def subscription_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def subscription_id=(_)
      end

      # Amount of tax collected in smallest currency unit (e.g. cents)
      sig { returns(T.nilable(Integer)) }
      def tax
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def tax=(_)
      end

      # Timestamp when the payment was last updated
      sig { returns(T.nilable(Time)) }
      def updated_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def updated_at=(_)
      end

      sig do
        params(
          business_id: String,
          created_at: Time,
          currency: Symbol,
          customer: Dodopayments::Models::CustomerLimitedDetails,
          disputes: T::Array[Dodopayments::Models::Dispute],
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          refunds: T::Array[Dodopayments::Models::Refund],
          total_amount: Integer,
          discount_id: T.nilable(String),
          error_message: T.nilable(String),
          payment_link: T.nilable(String),
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          product_cart: T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart]),
          status: T.nilable(Symbol),
          subscription_id: T.nilable(String),
          tax: T.nilable(Integer),
          updated_at: T.nilable(Time)
        )
          .returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        currency:,
        customer:,
        disputes:,
        metadata:,
        payment_id:,
        refunds:,
        total_amount:,
        discount_id: nil,
        error_message: nil,
        payment_link: nil,
        payment_method: nil,
        payment_method_type: nil,
        product_cart: nil,
        status: nil,
        subscription_id: nil,
        tax: nil,
        updated_at: nil
      )
      end

      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              currency: Symbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              disputes: T::Array[Dodopayments::Models::Dispute],
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              refunds: T::Array[Dodopayments::Models::Refund],
              total_amount: Integer,
              discount_id: T.nilable(String),
              error_message: T.nilable(String),
              payment_link: T.nilable(String),
              payment_method: T.nilable(String),
              payment_method_type: T.nilable(String),
              product_cart: T.nilable(T::Array[Dodopayments::Models::Payment::ProductCart]),
              status: T.nilable(Symbol),
              subscription_id: T.nilable(String),
              tax: T.nilable(Integer),
              updated_at: T.nilable(Time)
            }
          )
      end
      def to_hash
      end

      class Currency < Dodopayments::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      class ProductCart < Dodopayments::BaseModel
        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        sig { params(product_id: String, quantity: Integer).returns(T.attached_class) }
        def self.new(product_id:, quantity:)
        end

        sig { override.returns({product_id: String, quantity: Integer}) }
        def to_hash
        end
      end
    end
  end
end

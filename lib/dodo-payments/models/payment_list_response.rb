# frozen_string_literal: true

module DodoPayments
  module Models
    class PaymentListResponse < DodoPayments::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, DodoPayments::Models::PaymentListResponse::Currency]
      required :currency, enum: -> { DodoPayments::Models::PaymentListResponse::Currency }

      # @!attribute customer
      #
      #   @return [DodoPayments::Models::PaymentListResponse::Customer]
      required :customer, -> { DodoPayments::Models::PaymentListResponse::Customer }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, DodoPayments::HashOf[String]

      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute total_amount
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute payment_method
      #
      #   @return [String, nil]
      optional :payment_method, String, nil?: true

      # @!attribute payment_method_type
      #
      #   @return [String, nil]
      optional :payment_method_type, String, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, DodoPayments::Models::PaymentListResponse::Status, nil]
      optional :status, enum: -> { DodoPayments::Models::PaymentListResponse::Status }, nil?: true

      # @!attribute subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!parse
      #   # @param created_at [Time]
      #   # @param currency [Symbol, DodoPayments::Models::PaymentListResponse::Currency]
      #   # @param customer [DodoPayments::Models::PaymentListResponse::Customer]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param payment_id [String]
      #   # @param total_amount [Integer]
      #   # @param payment_method [String, nil]
      #   # @param payment_method_type [String, nil]
      #   # @param status [Symbol, DodoPayments::Models::PaymentListResponse::Status, nil]
      #   # @param subscription_id [String, nil]
      #   #
      #   def initialize(
      #     created_at:,
      #     currency:,
      #     customer:,
      #     metadata:,
      #     payment_id:,
      #     total_amount:,
      #     payment_method: nil,
      #     payment_method_type: nil,
      #     status: nil,
      #     subscription_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      class Currency < DodoPayments::Enum
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
      end

      class Customer < DodoPayments::BaseModel
        # @!attribute customer_id
        #   Unique identifier for the customer
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute email
        #   Email address of the customer
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #   Full name of the customer
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param customer_id [String]
        #   # @param email [String]
        #   # @param name [String]
        #   #
        #   def initialize(customer_id:, email:, name:, **) = super

        # def initialize: (Hash | DodoPayments::BaseModel) -> void
      end

      # @abstract
      class Status < DodoPayments::Enum
        SUCCEEDED = :succeeded
        FAILED = :failed
        CANCELLED = :cancelled
        PROCESSING = :processing
        REQUIRES_CUSTOMER_ACTION = :requires_customer_action
        REQUIRES_MERCHANT_ACTION = :requires_merchant_action
        REQUIRES_PAYMENT_METHOD = :requires_payment_method
        REQUIRES_CONFIRMATION = :requires_confirmation
        REQUIRES_CAPTURE = :requires_capture
        PARTIALLY_CAPTURED = :partially_captured
        PARTIALLY_CAPTURED_AND_CAPTURABLE = :partially_captured_and_capturable

        finalize!
      end
    end
  end
end

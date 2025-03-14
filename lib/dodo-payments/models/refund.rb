# frozen_string_literal: true

module DodoPayments
  module Models
    class Refund < DodoPayments::BaseModel
      # @!attribute business_id
      #   The unique identifier of the business issuing the refund.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   The timestamp of when the refund was created in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute payment_id
      #   The unique identifier of the payment associated with the refund.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute refund_id
      #   The unique identifier of the refund.
      #
      #   @return [String]
      required :refund_id, String

      # @!attribute status
      #
      #   @return [Symbol, DodoPayments::Models::Refund::Status]
      required :status, enum: -> { DodoPayments::Models::Refund::Status }

      # @!attribute amount
      #   The refunded amount.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute currency
      #
      #   @return [Symbol, DodoPayments::Models::Refund::Currency, nil]
      optional :currency, enum: -> { DodoPayments::Models::Refund::Currency }, nil?: true

      # @!attribute reason
      #   The reason provided for the refund, if any. Optional.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param payment_id [String]
      #   # @param refund_id [String]
      #   # @param status [Symbol, DodoPayments::Models::Refund::Status]
      #   # @param amount [Integer, nil]
      #   # @param currency [Symbol, DodoPayments::Models::Refund::Currency, nil]
      #   # @param reason [String, nil]
      #   #
      #   def initialize(business_id:, created_at:, payment_id:, refund_id:, status:, amount: nil, currency: nil, reason: nil, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      class Status < DodoPayments::Enum
        SUCCEEDED = :succeeded
        FAILED = :failed
        PENDING = :pending
        REVIEW = :review

        finalize!
      end

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
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payouts#list
    class PayoutListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute amount
      #   The total amount of the payout.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute business_id
      #   The unique identifier of the business associated with the payout.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute chargebacks
      #   The total value of chargebacks associated with the payout.
      #
      #   @return [Integer]
      required :chargebacks, Integer

      # @!attribute created_at
      #   The timestamp when the payout was created, in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::PayoutListResponse::Currency]
      required :currency, enum: -> { Dodopayments::Models::PayoutListResponse::Currency }

      # @!attribute fee
      #   The fee charged for processing the payout.
      #
      #   @return [Integer]
      required :fee, Integer

      # @!attribute payment_method
      #   The payment method used for the payout (e.g., bank transfer, card, etc.).
      #
      #   @return [String]
      required :payment_method, String

      # @!attribute payout_id
      #   The unique identifier of the payout.
      #
      #   @return [String]
      required :payout_id, String

      # @!attribute refunds
      #   The total value of refunds associated with the payout.
      #
      #   @return [Integer]
      required :refunds, Integer

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::PayoutListResponse::Status]
      required :status, enum: -> { Dodopayments::Models::PayoutListResponse::Status }

      # @!attribute tax
      #   The tax applied to the payout.
      #
      #   @return [Integer]
      required :tax, Integer

      # @!attribute updated_at
      #   The timestamp when the payout was last updated, in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute name
      #   The name of the payout recipient or purpose.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute payout_document_url
      #   The URL of the document associated with the payout.
      #
      #   @return [String, nil]
      optional :payout_document_url, String, nil?: true

      # @!attribute remarks
      #   Any additional remarks or notes associated with the payout.
      #
      #   @return [String, nil]
      optional :remarks, String, nil?: true

      # @!parse
      #   # @param amount [Integer]
      #   # @param business_id [String]
      #   # @param chargebacks [Integer]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, Dodopayments::Models::PayoutListResponse::Currency]
      #   # @param fee [Integer]
      #   # @param payment_method [String]
      #   # @param payout_id [String]
      #   # @param refunds [Integer]
      #   # @param status [Symbol, Dodopayments::Models::PayoutListResponse::Status]
      #   # @param tax [Integer]
      #   # @param updated_at [Time]
      #   # @param name [String, nil]
      #   # @param payout_document_url [String, nil]
      #   # @param remarks [String, nil]
      #   #
      #   def initialize(
      #     amount:,
      #     business_id:,
      #     chargebacks:,
      #     created_at:,
      #     currency:,
      #     fee:,
      #     payment_method:,
      #     payout_id:,
      #     refunds:,
      #     status:,
      #     tax:,
      #     updated_at:,
      #     name: nil,
      #     payout_document_url: nil,
      #     remarks: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void

      # @see Dodopayments::Models::PayoutListResponse#currency
      module Currency
        extend Dodopayments::Internal::Type::Enum

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

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # @see Dodopayments::Models::PayoutListResponse#status
      module Status
        extend Dodopayments::Internal::Type::Enum

        NOT_INITIATED = :not_initiated
        IN_PROGRESS = :in_progress
        ON_HOLD = :on_hold
        FAILED = :failed
        SUCCESS = :success

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end

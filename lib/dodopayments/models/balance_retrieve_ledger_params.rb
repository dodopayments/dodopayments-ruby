# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Balances#retrieve_ledger
    class BalanceRetrieveLedgerParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute created_at_gte
      #   Get events after this created time
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time

      # @!attribute created_at_lte
      #   Get events created before this time
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time

      # @!attribute currency
      #   Filter by currency
      #
      #   @return [Symbol, Dodopayments::Models::BalanceRetrieveLedgerParams::Currency, nil]
      optional :currency, enum: -> { Dodopayments::BalanceRetrieveLedgerParams::Currency }

      # @!attribute event_type
      #   Filter by Ledger Event Type
      #
      #   @return [Symbol, Dodopayments::Models::BalanceRetrieveLedgerParams::EventType, nil]
      optional :event_type, enum: -> { Dodopayments::BalanceRetrieveLedgerParams::EventType }

      # @!attribute limit
      #   Min : 1, Max : 100, default 10
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute reference_object_id
      #   Get events history of a specific object like payment/subscription/refund/dispute
      #
      #   @return [String, nil]
      optional :reference_object_id, String

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, currency: nil, event_type: nil, limit: nil, page_number: nil, page_size: nil, reference_object_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::BalanceRetrieveLedgerParams} for more details.
      #
      #   @param created_at_gte [Time] Get events after this created time
      #
      #   @param created_at_lte [Time] Get events created before this time
      #
      #   @param currency [Symbol, Dodopayments::Models::BalanceRetrieveLedgerParams::Currency] Filter by currency
      #
      #   @param event_type [Symbol, Dodopayments::Models::BalanceRetrieveLedgerParams::EventType] Filter by Ledger Event Type
      #
      #   @param limit [Integer] Min : 1, Max : 100, default 10
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param reference_object_id [String] Get events history of a specific object like payment/subscription/refund/dispute
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Filter by currency
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by Ledger Event Type
      module EventType
        extend Dodopayments::Internal::Type::Enum

        PAYMENT = :payment
        REFUND = :refund
        REFUND_REVERSAL = :refund_reversal
        DISPUTE = :dispute
        DISPUTE_REVERSAL = :dispute_reversal
        TAX = :tax
        TAX_REVERSAL = :tax_reversal
        PAYMENT_FEES = :payment_fees
        REFUND_FEES = :refund_fees
        REFUND_FEES_REVERSAL = :refund_fees_reversal
        DISPUTE_FEES = :dispute_fees
        PAYOUT = :payout
        PAYOUT_FEES = :payout_fees
        PAYOUT_REVERSAL = :payout_reversal
        PAYOUT_FEES_REVERSAL = :payout_fees_reversal
        DODO_CREDITS = :dodo_credits
        ADJUSTMENT = :adjustment
        CURRENCY_CONVERSION = :currency_conversion

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#list
    class PaymentListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute brand_id
      #   filter by Brand id
      #
      #   @return [String, nil]
      optional :brand_id, String

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
      #   @return [Symbol, Dodopayments::Models::PaymentListParams::Currency, nil]
      optional :currency, enum: -> { Dodopayments::PaymentListParams::Currency }

      # @!attribute customer_id
      #   Filter by customer id
      #
      #   @return [String, nil]
      optional :customer_id, String

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

      # @!attribute product_id
      #   Filter by product id
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute status
      #   Filter by status
      #
      #   @return [Symbol, Dodopayments::Models::PaymentListParams::Status, nil]
      optional :status, enum: -> { Dodopayments::PaymentListParams::Status }

      # @!attribute subscription_id
      #   Filter by subscription id
      #
      #   @return [String, nil]
      optional :subscription_id, String

      # @!method initialize(brand_id: nil, created_at_gte: nil, created_at_lte: nil, currency: nil, customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, subscription_id: nil, request_options: {})
      #   @param brand_id [String] filter by Brand id
      #
      #   @param created_at_gte [Time] Get events after this created time
      #
      #   @param created_at_lte [Time] Get events created before this time
      #
      #   @param currency [Symbol, Dodopayments::Models::PaymentListParams::Currency] Filter by currency
      #
      #   @param customer_id [String] Filter by customer id
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param product_id [String] Filter by product id
      #
      #   @param status [Symbol, Dodopayments::Models::PaymentListParams::Status] Filter by status
      #
      #   @param subscription_id [String] Filter by subscription id
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

      # Filter by status
      module Status
        extend Dodopayments::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

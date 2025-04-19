# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#list
    class ProductListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   Unique identifier for the business to which the product belongs.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Timestamp when the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_recurring
      #   Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @return [Boolean]
      required :is_recurring, Dodopayments::Internal::Type::Boolean

      # @!attribute product_id
      #   Unique identifier for the product.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #   and services.
      #
      #   @return [Symbol, Dodopayments::Models::ProductListResponse::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::Models::ProductListResponse::TaxCategory }

      # @!attribute updated_at
      #   Timestamp when the product was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::ProductListResponse::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Models::ProductListResponse::Currency }, nil?: true

      # @!attribute description
      #   Description of the product, optional.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   URL of the product image, optional.
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute price
      #   Price of the product, optional.
      #
      #   The price is represented in the lowest denomination of the currency. For
      #   example:
      #
      #   - In USD, a price of `$12.34` would be represented as `1234` (cents).
      #   - In JPY, a price of `¥1500` would be represented as `1500` (yen).
      #   - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
      #
      #   This ensures precision and avoids floating-point rounding errors.
      #
      #   @return [Integer, nil]
      optional :price, Integer, nil?: true

      # @!attribute price_detail
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      optional :price_detail, union: -> { Dodopayments::Models::Price }, nil?: true

      # @!attribute tax_inclusive
      #   Indicates if the price is tax inclusive
      #
      #   @return [Boolean, nil]
      optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!method initialize(business_id:, created_at:, is_recurring:, product_id:, tax_category:, updated_at:, currency: nil, description: nil, image: nil, name: nil, price: nil, price_detail: nil, tax_inclusive: nil)
      #   @param business_id [String]
      #   @param created_at [Time]
      #   @param is_recurring [Boolean]
      #   @param product_id [String]
      #   @param tax_category [Symbol, Dodopayments::Models::ProductListResponse::TaxCategory]
      #   @param updated_at [Time]
      #   @param currency [Symbol, Dodopayments::Models::ProductListResponse::Currency, nil]
      #   @param description [String, nil]
      #   @param image [String, nil]
      #   @param name [String, nil]
      #   @param price [Integer, nil]
      #   @param price_detail [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      #   @param tax_inclusive [Boolean, nil]

      # Represents the different categories of taxation applicable to various products
      # and services.
      #
      # @see Dodopayments::Models::ProductListResponse#tax_category
      module TaxCategory
        extend Dodopayments::Internal::Type::Enum

        DIGITAL_PRODUCTS = :digital_products
        SAAS = :saas
        E_BOOK = :e_book
        EDTECH = :edtech

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Dodopayments::Models::ProductListResponse#currency
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
    end
  end
end

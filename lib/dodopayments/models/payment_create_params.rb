# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#create
    class PaymentCreateParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute billing
      #
      #   @return [Dodopayments::Models::BillingAddress]
      required :billing, -> { Dodopayments::Models::BillingAddress }

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      required :customer, union: -> { Dodopayments::Models::CustomerRequest }

      # @!attribute product_cart
      #   List of products in the cart. Must contain at least 1 and at most 100 items.
      #
      #   @return [Array<Dodopayments::Models::OneTimeProductCartItem>]
      required :product_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::OneTimeProductCartItem] }

      # @!attribute allowed_payment_method_types
      #   List of payment methods allowed during checkout.
      #
      #   Customers will **never** see payment methods that are **not** in this list.
      #   However, adding a method here **does not guarantee** customers will see it.
      #   Availability still depends on other factors (e.g., customer location, merchant
      #   settings).
      #
      #   @return [Array<Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType>, nil]
      optional :allowed_payment_method_types,
               -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType] },
               nil?: true

      # @!attribute billing_currency
      #
      #   @return [Symbol, Dodopayments::Models::PaymentCreateParams::BillingCurrency, nil]
      optional :billing_currency,
               enum: -> { Dodopayments::Models::PaymentCreateParams::BillingCurrency },
               nil?: true

      # @!attribute discount_code
      #   Discount Code to apply to the transaction
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute [r] metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute payment_link
      #   Whether to generate a payment link. Defaults to false if not specified.
      #
      #   @return [Boolean, nil]
      optional :payment_link, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute return_url
      #   Optional URL to redirect the customer after payment. Must be a valid URL if
      #   provided.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute [r] show_saved_payment_methods
      #   Display saved payment methods of a returning customer False by default
      #
      #   @return [Boolean, nil]
      optional :show_saved_payment_methods, Dodopayments::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :show_saved_payment_methods

      # @!attribute tax_id
      #   Tax ID in case the payment is B2B. If tax id validation fails the payment
      #   creation will fail
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(billing:, customer:, product_cart:, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, metadata: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, request_options: {})
      #   @param billing [Dodopayments::Models::BillingAddress]
      #   @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      #   @param product_cart [Array<Dodopayments::Models::OneTimeProductCartItem>]
      #   @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType>, nil]
      #   @param billing_currency [Symbol, Dodopayments::Models::PaymentCreateParams::BillingCurrency, nil]
      #   @param discount_code [String, nil]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param payment_link [Boolean, nil]
      #   @param return_url [String, nil]
      #   @param show_saved_payment_methods [Boolean]
      #   @param tax_id [String, nil]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module AllowedPaymentMethodType
        extend Dodopayments::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit
        UPI_COLLECT = :upi_collect
        UPI_INTENT = :upi_intent
        APPLE_PAY = :apple_pay
        CASHAPP = :cashapp
        GOOGLE_PAY = :google_pay
        MULTIBANCO = :multibanco
        BANCONTACT_CARD = :bancontact_card
        EPS = :eps
        IDEAL = :ideal
        PRZELEWY24 = :przelewy24
        AFFIRM = :affirm
        KLARNA = :klarna
        SEPA = :sepa
        ACH = :ach
        AMAZON_PAY = :amazon_pay
        AFTERPAY_CLEARPAY = :afterpay_clearpay

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module BillingCurrency
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

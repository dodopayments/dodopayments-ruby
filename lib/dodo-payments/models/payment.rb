# frozen_string_literal: true

module DodoPayments
  module Models
    class Payment < DodoPayments::BaseModel
      # @!attribute business_id
      #   Identifier of the business associated with the payment
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Timestamp when the payment was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, DodoPayments::Models::Payment::Currency]
      required :currency, enum: -> { DodoPayments::Models::Payment::Currency }

      # @!attribute customer
      #
      #   @return [DodoPayments::Models::Payment::Customer]
      required :customer, -> { DodoPayments::Models::Payment::Customer }

      # @!attribute disputes
      #   List of disputes associated with this payment
      #
      #   @return [Array<DodoPayments::Models::Dispute>]
      required :disputes, -> { DodoPayments::ArrayOf[DodoPayments::Models::Dispute] }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, DodoPayments::HashOf[String]

      # @!attribute payment_id
      #   Unique identifier for the payment
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute refunds
      #   List of refunds issued for this payment
      #
      #   @return [Array<DodoPayments::Models::Refund>]
      required :refunds, -> { DodoPayments::ArrayOf[DodoPayments::Models::Refund] }

      # @!attribute total_amount
      #   Total amount charged to the customer including tax, in smallest currency unit
      #     (e.g. cents)
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute discount_id
      #   The discount id if discount is applied
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute error_message
      #   An error message if the payment failed
      #
      #   @return [String, nil]
      optional :error_message, String, nil?: true

      # @!attribute payment_link
      #   Checkout URL
      #
      #   @return [String, nil]
      optional :payment_link, String, nil?: true

      # @!attribute payment_method
      #   Payment method used by customer (e.g. "card", "bank_transfer")
      #
      #   @return [String, nil]
      optional :payment_method, String, nil?: true

      # @!attribute payment_method_type
      #   Specific type of payment method (e.g. "visa", "mastercard")
      #
      #   @return [String, nil]
      optional :payment_method_type, String, nil?: true

      # @!attribute product_cart
      #   List of products purchased in a one-time payment
      #
      #   @return [Array<DodoPayments::Models::Payment::ProductCart>, nil]
      optional :product_cart,
               -> { DodoPayments::ArrayOf[DodoPayments::Models::Payment::ProductCart] },
               nil?: true

      # @!attribute status
      #
      #   @return [Symbol, DodoPayments::Models::Payment::Status, nil]
      optional :status, enum: -> { DodoPayments::Models::Payment::Status }, nil?: true

      # @!attribute subscription_id
      #   Identifier of the subscription if payment is part of a subscription
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!attribute tax
      #   Amount of tax collected in smallest currency unit (e.g. cents)
      #
      #   @return [Integer, nil]
      optional :tax, Integer, nil?: true

      # @!attribute updated_at
      #   Timestamp when the payment was last updated
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!parse
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, DodoPayments::Models::Payment::Currency]
      #   # @param customer [DodoPayments::Models::Payment::Customer]
      #   # @param disputes [Array<DodoPayments::Models::Dispute>]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param payment_id [String]
      #   # @param refunds [Array<DodoPayments::Models::Refund>]
      #   # @param total_amount [Integer]
      #   # @param discount_id [String, nil]
      #   # @param error_message [String, nil]
      #   # @param payment_link [String, nil]
      #   # @param payment_method [String, nil]
      #   # @param payment_method_type [String, nil]
      #   # @param product_cart [Array<DodoPayments::Models::Payment::ProductCart>, nil]
      #   # @param status [Symbol, DodoPayments::Models::Payment::Status, nil]
      #   # @param subscription_id [String, nil]
      #   # @param tax [Integer, nil]
      #   # @param updated_at [Time, nil]
      #   #
      #   def initialize(
      #     business_id:,
      #     created_at:,
      #     currency:,
      #     customer:,
      #     disputes:,
      #     metadata:,
      #     payment_id:,
      #     refunds:,
      #     total_amount:,
      #     discount_id: nil,
      #     error_message: nil,
      #     payment_link: nil,
      #     payment_method: nil,
      #     payment_method_type: nil,
      #     product_cart: nil,
      #     status: nil,
      #     subscription_id: nil,
      #     tax: nil,
      #     updated_at: nil,
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

      class ProductCart < DodoPayments::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute quantity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!parse
        #   # @param product_id [String]
        #   # @param quantity [Integer]
        #   #
        #   def initialize(product_id:, quantity:, **) = super

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

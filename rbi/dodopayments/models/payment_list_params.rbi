# typed: strong

module Dodopayments
  module Models
    class PaymentListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::PaymentListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # filter by Brand id
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

      # Get events after this created time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_gte

      sig { params(created_at_gte: Time).void }
      attr_writer :created_at_gte

      # Get events created before this time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lte

      sig { params(created_at_lte: Time).void }
      attr_writer :created_at_lte

      # Filter by currency
      sig do
        returns(T.nilable(Dodopayments::PaymentListParams::Currency::OrSymbol))
      end
      attr_reader :currency

      sig do
        params(
          currency: Dodopayments::PaymentListParams::Currency::OrSymbol
        ).void
      end
      attr_writer :currency

      # Filter by customer id
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by product id
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # Filter by status
      sig do
        returns(T.nilable(Dodopayments::PaymentListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Dodopayments::PaymentListParams::Status::OrSymbol).void
      end
      attr_writer :status

      # Filter by subscription id
      sig { returns(T.nilable(String)) }
      attr_reader :subscription_id

      sig { params(subscription_id: String).void }
      attr_writer :subscription_id

      sig do
        params(
          brand_id: String,
          created_at_gte: Time,
          created_at_lte: Time,
          currency: Dodopayments::PaymentListParams::Currency::OrSymbol,
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          product_id: String,
          status: Dodopayments::PaymentListParams::Status::OrSymbol,
          subscription_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # filter by Brand id
        brand_id: nil,
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by currency
        currency: nil,
        # Filter by customer id
        customer_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by product id
        product_id: nil,
        # Filter by status
        status: nil,
        # Filter by subscription id
        subscription_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            created_at_gte: Time,
            created_at_lte: Time,
            currency: Dodopayments::PaymentListParams::Currency::OrSymbol,
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            product_id: String,
            status: Dodopayments::PaymentListParams::Status::OrSymbol,
            subscription_id: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by currency
      module Currency
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::PaymentListParams::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED =
          T.let(:AED, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        ALL =
          T.let(:ALL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        AMD =
          T.let(:AMD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        ANG =
          T.let(:ANG, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        AOA =
          T.let(:AOA, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        ARS =
          T.let(:ARS, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        AUD =
          T.let(:AUD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        AWG =
          T.let(:AWG, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        AZN =
          T.let(:AZN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BAM =
          T.let(:BAM, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BBD =
          T.let(:BBD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BDT =
          T.let(:BDT, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BGN =
          T.let(:BGN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BHD =
          T.let(:BHD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BIF =
          T.let(:BIF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BMD =
          T.let(:BMD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BND =
          T.let(:BND, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BOB =
          T.let(:BOB, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BRL =
          T.let(:BRL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BSD =
          T.let(:BSD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BWP =
          T.let(:BWP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BYN =
          T.let(:BYN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        BZD =
          T.let(:BZD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CAD =
          T.let(:CAD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CHF =
          T.let(:CHF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CLP =
          T.let(:CLP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CNY =
          T.let(:CNY, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        COP =
          T.let(:COP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CRC =
          T.let(:CRC, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CUP =
          T.let(:CUP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CVE =
          T.let(:CVE, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        CZK =
          T.let(:CZK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        DJF =
          T.let(:DJF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        DKK =
          T.let(:DKK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        DOP =
          T.let(:DOP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        DZD =
          T.let(:DZD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        EGP =
          T.let(:EGP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        ETB =
          T.let(:ETB, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        EUR =
          T.let(:EUR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        FJD =
          T.let(:FJD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        FKP =
          T.let(:FKP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GBP =
          T.let(:GBP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GEL =
          T.let(:GEL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GHS =
          T.let(:GHS, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GIP =
          T.let(:GIP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GMD =
          T.let(:GMD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GNF =
          T.let(:GNF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GTQ =
          T.let(:GTQ, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        GYD =
          T.let(:GYD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        HKD =
          T.let(:HKD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        HNL =
          T.let(:HNL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        HRK =
          T.let(:HRK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        HTG =
          T.let(:HTG, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        HUF =
          T.let(:HUF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        IDR =
          T.let(:IDR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        ILS =
          T.let(:ILS, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        INR =
          T.let(:INR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        IQD =
          T.let(:IQD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        JMD =
          T.let(:JMD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        JOD =
          T.let(:JOD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        JPY =
          T.let(:JPY, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KES =
          T.let(:KES, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KGS =
          T.let(:KGS, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KHR =
          T.let(:KHR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KMF =
          T.let(:KMF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KRW =
          T.let(:KRW, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KWD =
          T.let(:KWD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KYD =
          T.let(:KYD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        KZT =
          T.let(:KZT, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        LAK =
          T.let(:LAK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        LBP =
          T.let(:LBP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        LKR =
          T.let(:LKR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        LRD =
          T.let(:LRD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        LSL =
          T.let(:LSL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        LYD =
          T.let(:LYD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MAD =
          T.let(:MAD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MDL =
          T.let(:MDL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MGA =
          T.let(:MGA, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MKD =
          T.let(:MKD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MMK =
          T.let(:MMK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MNT =
          T.let(:MNT, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MOP =
          T.let(:MOP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MRU =
          T.let(:MRU, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MUR =
          T.let(:MUR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MVR =
          T.let(:MVR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MWK =
          T.let(:MWK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MXN =
          T.let(:MXN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MYR =
          T.let(:MYR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        MZN =
          T.let(:MZN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        NAD =
          T.let(:NAD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        NGN =
          T.let(:NGN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        NIO =
          T.let(:NIO, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        NOK =
          T.let(:NOK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        NPR =
          T.let(:NPR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        NZD =
          T.let(:NZD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        OMR =
          T.let(:OMR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        PAB =
          T.let(:PAB, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        PEN =
          T.let(:PEN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        PGK =
          T.let(:PGK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        PHP =
          T.let(:PHP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        PKR =
          T.let(:PKR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        PLN =
          T.let(:PLN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        PYG =
          T.let(:PYG, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        QAR =
          T.let(:QAR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        RON =
          T.let(:RON, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        RSD =
          T.let(:RSD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        RUB =
          T.let(:RUB, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        RWF =
          T.let(:RWF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SAR =
          T.let(:SAR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SBD =
          T.let(:SBD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SCR =
          T.let(:SCR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SEK =
          T.let(:SEK, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SGD =
          T.let(:SGD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SHP =
          T.let(:SHP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SLE =
          T.let(:SLE, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SLL =
          T.let(:SLL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SOS =
          T.let(:SOS, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SRD =
          T.let(:SRD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SSP =
          T.let(:SSP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        STN =
          T.let(:STN, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SVC =
          T.let(:SVC, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        SZL =
          T.let(:SZL, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        THB =
          T.let(:THB, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        TND =
          T.let(:TND, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        TOP =
          T.let(:TOP, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        TRY =
          T.let(:TRY, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        TTD =
          T.let(:TTD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        TWD =
          T.let(:TWD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        TZS =
          T.let(:TZS, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        UAH =
          T.let(:UAH, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        UGX =
          T.let(:UGX, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        USD =
          T.let(:USD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        UYU =
          T.let(:UYU, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        UZS =
          T.let(:UZS, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        VES =
          T.let(:VES, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        VND =
          T.let(:VND, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        VUV =
          T.let(:VUV, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        WST =
          T.let(:WST, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        XAF =
          T.let(:XAF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        XCD =
          T.let(:XCD, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        XOF =
          T.let(:XOF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        XPF =
          T.let(:XPF, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        YER =
          T.let(:YER, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        ZAR =
          T.let(:ZAR, Dodopayments::PaymentListParams::Currency::TaggedSymbol)
        ZMW =
          T.let(:ZMW, Dodopayments::PaymentListParams::Currency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::PaymentListParams::Currency::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by status
      module Status
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::PaymentListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCEEDED =
          T.let(
            :succeeded,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Dodopayments::PaymentListParams::Status::TaggedSymbol)
        CANCELLED =
          T.let(
            :cancelled,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_CUSTOMER_ACTION =
          T.let(
            :requires_customer_action,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_MERCHANT_ACTION =
          T.let(
            :requires_merchant_action,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_PAYMENT_METHOD =
          T.let(
            :requires_payment_method,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_CONFIRMATION =
          T.let(
            :requires_confirmation,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_CAPTURE =
          T.let(
            :requires_capture,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        PARTIALLY_CAPTURED =
          T.let(
            :partially_captured,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        PARTIALLY_CAPTURED_AND_CAPTURABLE =
          T.let(
            :partially_captured_and_capturable,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::PaymentListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

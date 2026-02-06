# typed: strong

module Dodopayments
  module Models
    class BalanceRetrieveLedgerParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::BalanceRetrieveLedgerParams,
            Dodopayments::Internal::AnyHash
          )
        end

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
        returns(
          T.nilable(
            Dodopayments::BalanceRetrieveLedgerParams::Currency::OrSymbol
          )
        )
      end
      attr_reader :currency

      sig do
        params(
          currency:
            Dodopayments::BalanceRetrieveLedgerParams::Currency::OrSymbol
        ).void
      end
      attr_writer :currency

      # Filter by Ledger Event Type
      sig do
        returns(
          T.nilable(
            Dodopayments::BalanceRetrieveLedgerParams::EventType::OrSymbol
          )
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type:
            Dodopayments::BalanceRetrieveLedgerParams::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      # Min : 1, Max : 100, default 10
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

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

      # Get events history of a specific object like payment/subscription/refund/dispute
      sig { returns(T.nilable(String)) }
      attr_reader :reference_object_id

      sig { params(reference_object_id: String).void }
      attr_writer :reference_object_id

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          currency:
            Dodopayments::BalanceRetrieveLedgerParams::Currency::OrSymbol,
          event_type:
            Dodopayments::BalanceRetrieveLedgerParams::EventType::OrSymbol,
          limit: Integer,
          page_number: Integer,
          page_size: Integer,
          reference_object_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by currency
        currency: nil,
        # Filter by Ledger Event Type
        event_type: nil,
        # Min : 1, Max : 100, default 10
        limit: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Get events history of a specific object like payment/subscription/refund/dispute
        reference_object_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at_gte: Time,
            created_at_lte: Time,
            currency:
              Dodopayments::BalanceRetrieveLedgerParams::Currency::OrSymbol,
            event_type:
              Dodopayments::BalanceRetrieveLedgerParams::EventType::OrSymbol,
            limit: Integer,
            page_number: Integer,
            page_size: Integer,
            reference_object_id: String,
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
            T.all(Symbol, Dodopayments::BalanceRetrieveLedgerParams::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AED =
          T.let(
            :AED,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        ALL =
          T.let(
            :ALL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        AMD =
          T.let(
            :AMD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        ANG =
          T.let(
            :ANG,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        AOA =
          T.let(
            :AOA,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        ARS =
          T.let(
            :ARS,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        AUD =
          T.let(
            :AUD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        AWG =
          T.let(
            :AWG,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        AZN =
          T.let(
            :AZN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BAM =
          T.let(
            :BAM,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BBD =
          T.let(
            :BBD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BDT =
          T.let(
            :BDT,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BGN =
          T.let(
            :BGN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BHD =
          T.let(
            :BHD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BIF =
          T.let(
            :BIF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BMD =
          T.let(
            :BMD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BND =
          T.let(
            :BND,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BOB =
          T.let(
            :BOB,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BRL =
          T.let(
            :BRL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BSD =
          T.let(
            :BSD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BWP =
          T.let(
            :BWP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BYN =
          T.let(
            :BYN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        BZD =
          T.let(
            :BZD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CAD =
          T.let(
            :CAD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CHF =
          T.let(
            :CHF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CLP =
          T.let(
            :CLP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CNY =
          T.let(
            :CNY,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        COP =
          T.let(
            :COP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CRC =
          T.let(
            :CRC,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CUP =
          T.let(
            :CUP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CVE =
          T.let(
            :CVE,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        CZK =
          T.let(
            :CZK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        DJF =
          T.let(
            :DJF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        DKK =
          T.let(
            :DKK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        DOP =
          T.let(
            :DOP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        DZD =
          T.let(
            :DZD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        EGP =
          T.let(
            :EGP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        ETB =
          T.let(
            :ETB,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        EUR =
          T.let(
            :EUR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        FJD =
          T.let(
            :FJD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        FKP =
          T.let(
            :FKP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GBP =
          T.let(
            :GBP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GEL =
          T.let(
            :GEL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GHS =
          T.let(
            :GHS,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GIP =
          T.let(
            :GIP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GMD =
          T.let(
            :GMD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GNF =
          T.let(
            :GNF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GTQ =
          T.let(
            :GTQ,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        GYD =
          T.let(
            :GYD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        HKD =
          T.let(
            :HKD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        HNL =
          T.let(
            :HNL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        HRK =
          T.let(
            :HRK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        HTG =
          T.let(
            :HTG,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        HUF =
          T.let(
            :HUF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        IDR =
          T.let(
            :IDR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        ILS =
          T.let(
            :ILS,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        INR =
          T.let(
            :INR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        IQD =
          T.let(
            :IQD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        JMD =
          T.let(
            :JMD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        JOD =
          T.let(
            :JOD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        JPY =
          T.let(
            :JPY,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KES =
          T.let(
            :KES,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KGS =
          T.let(
            :KGS,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KHR =
          T.let(
            :KHR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KMF =
          T.let(
            :KMF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KRW =
          T.let(
            :KRW,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KWD =
          T.let(
            :KWD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KYD =
          T.let(
            :KYD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        KZT =
          T.let(
            :KZT,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        LAK =
          T.let(
            :LAK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        LBP =
          T.let(
            :LBP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        LKR =
          T.let(
            :LKR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        LRD =
          T.let(
            :LRD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        LSL =
          T.let(
            :LSL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        LYD =
          T.let(
            :LYD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MAD =
          T.let(
            :MAD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MDL =
          T.let(
            :MDL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MGA =
          T.let(
            :MGA,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MKD =
          T.let(
            :MKD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MMK =
          T.let(
            :MMK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MNT =
          T.let(
            :MNT,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MOP =
          T.let(
            :MOP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MRU =
          T.let(
            :MRU,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MUR =
          T.let(
            :MUR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MVR =
          T.let(
            :MVR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MWK =
          T.let(
            :MWK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MXN =
          T.let(
            :MXN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MYR =
          T.let(
            :MYR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        MZN =
          T.let(
            :MZN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        NAD =
          T.let(
            :NAD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        NGN =
          T.let(
            :NGN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        NIO =
          T.let(
            :NIO,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        NOK =
          T.let(
            :NOK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        NPR =
          T.let(
            :NPR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        NZD =
          T.let(
            :NZD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        OMR =
          T.let(
            :OMR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        PAB =
          T.let(
            :PAB,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        PEN =
          T.let(
            :PEN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        PGK =
          T.let(
            :PGK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        PHP =
          T.let(
            :PHP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        PKR =
          T.let(
            :PKR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        PLN =
          T.let(
            :PLN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        PYG =
          T.let(
            :PYG,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        QAR =
          T.let(
            :QAR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        RON =
          T.let(
            :RON,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        RSD =
          T.let(
            :RSD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        RUB =
          T.let(
            :RUB,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        RWF =
          T.let(
            :RWF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SAR =
          T.let(
            :SAR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SBD =
          T.let(
            :SBD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SCR =
          T.let(
            :SCR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SEK =
          T.let(
            :SEK,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SGD =
          T.let(
            :SGD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SHP =
          T.let(
            :SHP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SLE =
          T.let(
            :SLE,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SLL =
          T.let(
            :SLL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SOS =
          T.let(
            :SOS,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SRD =
          T.let(
            :SRD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SSP =
          T.let(
            :SSP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        STN =
          T.let(
            :STN,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SVC =
          T.let(
            :SVC,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        SZL =
          T.let(
            :SZL,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        THB =
          T.let(
            :THB,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        TND =
          T.let(
            :TND,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        TOP =
          T.let(
            :TOP,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        TRY =
          T.let(
            :TRY,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        TTD =
          T.let(
            :TTD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        TWD =
          T.let(
            :TWD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        TZS =
          T.let(
            :TZS,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        UAH =
          T.let(
            :UAH,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        UGX =
          T.let(
            :UGX,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        USD =
          T.let(
            :USD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        UYU =
          T.let(
            :UYU,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        UZS =
          T.let(
            :UZS,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        VES =
          T.let(
            :VES,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        VND =
          T.let(
            :VND,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        VUV =
          T.let(
            :VUV,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        WST =
          T.let(
            :WST,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        XAF =
          T.let(
            :XAF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        XCD =
          T.let(
            :XCD,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        XOF =
          T.let(
            :XOF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        XPF =
          T.let(
            :XPF,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        YER =
          T.let(
            :YER,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        ZAR =
          T.let(
            :ZAR,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )
        ZMW =
          T.let(
            :ZMW,
            Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::BalanceRetrieveLedgerParams::Currency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Filter by Ledger Event Type
      module EventType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::BalanceRetrieveLedgerParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT =
          T.let(
            :payment,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        REFUND =
          T.let(
            :refund,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        REFUND_REVERSAL =
          T.let(
            :refund_reversal,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        DISPUTE =
          T.let(
            :dispute,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        DISPUTE_REVERSAL =
          T.let(
            :dispute_reversal,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        TAX =
          T.let(
            :tax,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        TAX_REVERSAL =
          T.let(
            :tax_reversal,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        PAYMENT_FEES =
          T.let(
            :payment_fees,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        REFUND_FEES =
          T.let(
            :refund_fees,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        REFUND_FEES_REVERSAL =
          T.let(
            :refund_fees_reversal,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        DISPUTE_FEES =
          T.let(
            :dispute_fees,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        PAYOUT =
          T.let(
            :payout,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        PAYOUT_FEES =
          T.let(
            :payout_fees,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        PAYOUT_REVERSAL =
          T.let(
            :payout_reversal,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        PAYOUT_FEES_REVERSAL =
          T.let(
            :payout_fees_reversal,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        DODO_CREDITS =
          T.let(
            :dodo_credits,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        ADJUSTMENT =
          T.let(
            :adjustment,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )
        CURRENCY_CONVERSION =
          T.let(
            :currency_conversion,
            Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::BalanceRetrieveLedgerParams::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class DisputeListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DisputeListParams,
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

      # Filter by customer_id
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # Filter by dispute stage
      sig do
        returns(
          T.nilable(Dodopayments::DisputeListParams::DisputeStage::OrSymbol)
        )
      end
      attr_reader :dispute_stage

      sig do
        params(
          dispute_stage: Dodopayments::DisputeListParams::DisputeStage::OrSymbol
        ).void
      end
      attr_writer :dispute_stage

      # Filter by dispute status
      sig do
        returns(
          T.nilable(Dodopayments::DisputeListParams::DisputeStatus::OrSymbol)
        )
      end
      attr_reader :dispute_status

      sig do
        params(
          dispute_status:
            Dodopayments::DisputeListParams::DisputeStatus::OrSymbol
        ).void
      end
      attr_writer :dispute_status

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

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          dispute_stage:
            Dodopayments::DisputeListParams::DisputeStage::OrSymbol,
          dispute_status:
            Dodopayments::DisputeListParams::DisputeStatus::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by customer_id
        customer_id: nil,
        # Filter by dispute stage
        dispute_stage: nil,
        # Filter by dispute status
        dispute_status: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at_gte: Time,
            created_at_lte: Time,
            customer_id: String,
            dispute_stage:
              Dodopayments::DisputeListParams::DisputeStage::OrSymbol,
            dispute_status:
              Dodopayments::DisputeListParams::DisputeStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by dispute stage
      module DisputeStage
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::DisputeListParams::DisputeStage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRE_DISPUTE =
          T.let(
            :pre_dispute,
            Dodopayments::DisputeListParams::DisputeStage::TaggedSymbol
          )
        DISPUTE =
          T.let(
            :dispute,
            Dodopayments::DisputeListParams::DisputeStage::TaggedSymbol
          )
        PRE_ARBITRATION =
          T.let(
            :pre_arbitration,
            Dodopayments::DisputeListParams::DisputeStage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::DisputeListParams::DisputeStage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Filter by dispute status
      module DisputeStatus
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::DisputeListParams::DisputeStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISPUTE_OPENED =
          T.let(
            :dispute_opened,
            Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
          )
        DISPUTE_EXPIRED =
          T.let(
            :dispute_expired,
            Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
          )
        DISPUTE_ACCEPTED =
          T.let(
            :dispute_accepted,
            Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
          )
        DISPUTE_CANCELLED =
          T.let(
            :dispute_cancelled,
            Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
          )
        DISPUTE_CHALLENGED =
          T.let(
            :dispute_challenged,
            Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
          )
        DISPUTE_WON =
          T.let(
            :dispute_won,
            Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
          )
        DISPUTE_LOST =
          T.let(
            :dispute_lost,
            Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::DisputeListParams::DisputeStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

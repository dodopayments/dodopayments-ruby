# typed: strong

module Dodopayments
  module Models
    class DisputeListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Get events after this created time
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      # Get events created before this time
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      # Filter by customer_id
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # Filter by dispute stage
      sig { returns(T.nilable(Dodopayments::Models::DisputeStage::OrSymbol)) }
      attr_accessor :dispute_stage

      # Filter by dispute status
      sig { returns(T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol)) }
      attr_accessor :dispute_status

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          dispute_stage: T.nilable(Dodopayments::Models::DisputeStage::OrSymbol),
          dispute_status: T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
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
      ); end
      sig do
        override
          .returns(
            {
              created_at_gte: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              customer_id: T.nilable(String),
              dispute_stage: T.nilable(Dodopayments::Models::DisputeStage::OrSymbol),
              dispute_status: T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end

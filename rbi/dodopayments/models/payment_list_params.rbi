# typed: strong

module Dodopayments
  module Models
    class PaymentListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      # Get events after this created time
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      # Get events created before this time
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      # Filter by customer id
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      # Filter by status
      sig { returns(T.nilable(Dodopayments::IntentStatus::OrSymbol)) }
      attr_accessor :status

      # Filter by subscription id
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by customer id
        customer_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
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
            created_at_gte: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            customer_id: T.nilable(String),
            page_number: T.nilable(Integer),
            page_size: T.nilable(Integer),
            status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
            subscription_id: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

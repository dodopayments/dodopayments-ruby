# typed: strong

module Dodopayments
  module Models
    class SubscriptionListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

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
      sig { returns(T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at_gte: nil,
        created_at_lte: nil,
        customer_id: nil,
        page_number: nil,
        page_size: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              created_at_gte: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              customer_id: T.nilable(String),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end

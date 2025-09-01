# typed: strong

module Dodopayments
  module Models
    class SubscriptionRetrieveUsageHistoryParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionRetrieveUsageHistoryParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Filter by end date (inclusive)
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # Filter by specific meter ID
      sig { returns(T.nilable(String)) }
      attr_accessor :meter_id

      # Page number (default: 0)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size (default: 10, max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      # Filter by start date (inclusive)
      sig { returns(T.nilable(Time)) }
      attr_accessor :start_date

      sig do
        params(
          end_date: T.nilable(Time),
          meter_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          start_date: T.nilable(Time),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by end date (inclusive)
        end_date: nil,
        # Filter by specific meter ID
        meter_id: nil,
        # Page number (default: 0)
        page_number: nil,
        # Page size (default: 10, max: 100)
        page_size: nil,
        # Filter by start date (inclusive)
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            end_date: T.nilable(Time),
            meter_id: T.nilable(String),
            page_number: T.nilable(Integer),
            page_size: T.nilable(Integer),
            start_date: T.nilable(Time),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

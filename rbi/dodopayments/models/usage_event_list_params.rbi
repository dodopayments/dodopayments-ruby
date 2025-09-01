# typed: strong

module Dodopayments
  module Models
    class UsageEventListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::UsageEventListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Filter events by customer ID
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # Filter events created before this timestamp
      sig { returns(T.nilable(Time)) }
      attr_reader :end_

      sig { params(end_: Time).void }
      attr_writer :end_

      # Filter events by event name. If both event_name and meter_id are provided, they
      # must match the meter's configured event_name
      sig { returns(T.nilable(String)) }
      attr_reader :event_name

      sig { params(event_name: String).void }
      attr_writer :event_name

      # Filter events by meter ID. When provided, only events that match the meter's
      # event_name and filter criteria will be returned
      sig { returns(T.nilable(String)) }
      attr_reader :meter_id

      sig { params(meter_id: String).void }
      attr_writer :meter_id

      # Page number (0-based, default: 0)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of events to return per page (default: 10)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter events created after this timestamp
      sig { returns(T.nilable(Time)) }
      attr_reader :start

      sig { params(start: Time).void }
      attr_writer :start

      sig do
        params(
          customer_id: String,
          end_: Time,
          event_name: String,
          meter_id: String,
          page_number: Integer,
          page_size: Integer,
          start: Time,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter events by customer ID
        customer_id: nil,
        # Filter events created before this timestamp
        end_: nil,
        # Filter events by event name. If both event_name and meter_id are provided, they
        # must match the meter's configured event_name
        event_name: nil,
        # Filter events by meter ID. When provided, only events that match the meter's
        # event_name and filter criteria will be returned
        meter_id: nil,
        # Page number (0-based, default: 0)
        page_number: nil,
        # Number of events to return per page (default: 10)
        page_size: nil,
        # Filter events created after this timestamp
        start: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            end_: Time,
            event_name: String,
            meter_id: String,
            page_number: Integer,
            page_size: Integer,
            start: Time,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

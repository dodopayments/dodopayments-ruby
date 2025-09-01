# typed: strong

module Dodopayments
  module Resources
    class Meters
      sig do
        params(
          aggregation: Dodopayments::MeterAggregation::OrHash,
          event_name: String,
          measurement_unit: String,
          name: String,
          description: T.nilable(String),
          filter: T.nilable(Dodopayments::MeterFilter::OrHash),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Meter)
      end
      def create(
        # Aggregation configuration for the meter
        aggregation:,
        # Event name to track
        event_name:,
        # measurement unit
        measurement_unit:,
        # Name of the meter
        name:,
        # Optional description of the meter
        description: nil,
        # Optional filter to apply to the meter
        filter: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Meter)
      end
      def retrieve(
        # Meter ID
        id,
        request_options: {}
      )
      end

      sig do
        params(
          archived: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Meter
          ]
        )
      end
      def list(
        # List archived meters
        archived: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Meter ID
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def unarchive(
        # Meter ID
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

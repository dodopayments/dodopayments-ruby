# typed: strong

module Dodopayments
  module Models
    class MeterCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::MeterCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Aggregation configuration for the meter
      sig { returns(Dodopayments::MeterAggregation) }
      attr_reader :aggregation

      sig { params(aggregation: Dodopayments::MeterAggregation::OrHash).void }
      attr_writer :aggregation

      # Event name to track
      sig { returns(String) }
      attr_accessor :event_name

      # measurement unit
      sig { returns(String) }
      attr_accessor :measurement_unit

      # Name of the meter
      sig { returns(String) }
      attr_accessor :name

      # Optional description of the meter
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional filter to apply to the meter
      sig { returns(T.nilable(Dodopayments::MeterFilter)) }
      attr_reader :filter

      sig { params(filter: T.nilable(Dodopayments::MeterFilter::OrHash)).void }
      attr_writer :filter

      sig do
        params(
          aggregation: Dodopayments::MeterAggregation::OrHash,
          event_name: String,
          measurement_unit: String,
          name: String,
          description: T.nilable(String),
          filter: T.nilable(Dodopayments::MeterFilter::OrHash),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        override.returns(
          {
            aggregation: Dodopayments::MeterAggregation,
            event_name: String,
            measurement_unit: String,
            name: String,
            description: T.nilable(String),
            filter: T.nilable(Dodopayments::MeterFilter),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

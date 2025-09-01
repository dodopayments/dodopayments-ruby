# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Meters#create
    class MeterCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute aggregation
      #   Aggregation configuration for the meter
      #
      #   @return [Dodopayments::Models::MeterAggregation]
      required :aggregation, -> { Dodopayments::MeterAggregation }

      # @!attribute event_name
      #   Event name to track
      #
      #   @return [String]
      required :event_name, String

      # @!attribute measurement_unit
      #   measurement unit
      #
      #   @return [String]
      required :measurement_unit, String

      # @!attribute name
      #   Name of the meter
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   Optional description of the meter
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute filter
      #   Optional filter to apply to the meter
      #
      #   @return [Dodopayments::Models::MeterFilter, nil]
      optional :filter, -> { Dodopayments::MeterFilter }, nil?: true

      # @!method initialize(aggregation:, event_name:, measurement_unit:, name:, description: nil, filter: nil, request_options: {})
      #   @param aggregation [Dodopayments::Models::MeterAggregation] Aggregation configuration for the meter
      #
      #   @param event_name [String] Event name to track
      #
      #   @param measurement_unit [String] measurement unit
      #
      #   @param name [String] Name of the meter
      #
      #   @param description [String, nil] Optional description of the meter
      #
      #   @param filter [Dodopayments::Models::MeterFilter, nil] Optional filter to apply to the meter
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

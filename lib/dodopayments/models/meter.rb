# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Meters#create
    class Meter < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute aggregation
      #
      #   @return [Dodopayments::Models::MeterAggregation]
      required :aggregation, -> { Dodopayments::MeterAggregation }

      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute event_name
      #
      #   @return [String]
      required :event_name, String

      # @!attribute measurement_unit
      #
      #   @return [String]
      required :measurement_unit, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute filter
      #   A filter structure that combines multiple conditions with logical conjunctions
      #   (AND/OR).
      #
      #   Supports up to 3 levels of nesting to create complex filter expressions. Each
      #   filter has a conjunction (and/or) and clauses that can be either direct
      #   conditions or nested filters.
      #
      #   @return [Dodopayments::Models::MeterFilter, nil]
      optional :filter, -> { Dodopayments::MeterFilter }, nil?: true

      # @!method initialize(id:, aggregation:, business_id:, created_at:, event_name:, measurement_unit:, name:, updated_at:, description: nil, filter: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Meter} for more details.
      #
      #   @param id [String]
      #
      #   @param aggregation [Dodopayments::Models::MeterAggregation]
      #
      #   @param business_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param event_name [String]
      #
      #   @param measurement_unit [String]
      #
      #   @param name [String]
      #
      #   @param updated_at [Time]
      #
      #   @param description [String, nil]
      #
      #   @param filter [Dodopayments::Models::MeterFilter, nil] A filter structure that combines multiple conditions with logical conjunctions (
    end
  end
end

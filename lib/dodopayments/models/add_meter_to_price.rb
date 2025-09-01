# frozen_string_literal: true

module Dodopayments
  module Models
    class AddMeterToPrice < Dodopayments::Internal::Type::BaseModel
      # @!attribute meter_id
      #
      #   @return [String]
      required :meter_id, String

      # @!attribute price_per_unit
      #   The price per unit in lowest denomination. Must be greater than zero. Supports
      #   up to 5 digits before decimal point and 12 decimal places.
      #
      #   @return [String]
      required :price_per_unit, String

      # @!attribute description
      #   Meter description. Will ignored on Request, but will be shown in response
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute free_threshold
      #
      #   @return [Integer, nil]
      optional :free_threshold, Integer, nil?: true

      # @!attribute measurement_unit
      #   Meter measurement unit. Will ignored on Request, but will be shown in response
      #
      #   @return [String, nil]
      optional :measurement_unit, String, nil?: true

      # @!attribute name
      #   Meter name. Will ignored on Request, but will be shown in response
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(meter_id:, price_per_unit:, description: nil, free_threshold: nil, measurement_unit: nil, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::AddMeterToPrice} for more details.
      #
      #   @param meter_id [String]
      #
      #   @param price_per_unit [String] The price per unit in lowest denomination. Must be greater than zero. Supports u
      #
      #   @param description [String, nil] Meter description. Will ignored on Request, but will be shown in response
      #
      #   @param free_threshold [Integer, nil]
      #
      #   @param measurement_unit [String, nil] Meter measurement unit. Will ignored on Request, but will be shown in response
      #
      #   @param name [String, nil] Meter name. Will ignored on Request, but will be shown in response
    end
  end
end

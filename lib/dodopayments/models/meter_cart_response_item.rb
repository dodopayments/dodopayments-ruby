# frozen_string_literal: true

module Dodopayments
  module Models
    class MeterCartResponseItem < Dodopayments::Internal::Type::BaseModel
      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute free_threshold
      #
      #   @return [Integer]
      required :free_threshold, Integer

      # @!attribute measurement_unit
      #
      #   @return [String]
      required :measurement_unit, String

      # @!attribute meter_id
      #
      #   @return [String]
      required :meter_id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute price_per_unit
      #
      #   @return [String, nil]
      optional :price_per_unit, String, nil?: true

      # @!method initialize(currency:, free_threshold:, measurement_unit:, meter_id:, name:, description: nil, price_per_unit: nil)
      #   Response struct representing usage-based meter cart details for a subscription
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #   @param free_threshold [Integer]
      #   @param measurement_unit [String]
      #   @param meter_id [String]
      #   @param name [String]
      #   @param description [String, nil]
      #   @param price_per_unit [String, nil]
    end
  end
end

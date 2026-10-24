# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Meters#update
    class MeterUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #   Description of the meter. Send `null` to remove the description. Omit it to keep
      #   it.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute measurement_unit
      #   Measurement unit
      #
      #   @return [String, nil]
      optional :measurement_unit, String, nil?: true

      # @!attribute name
      #   Name of the meter
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(id:, description: nil, measurement_unit: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::MeterUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param description [String, nil] Description of the meter. Send `null` to remove the description. Omit it to keep
      #
      #   @param measurement_unit [String, nil] Measurement unit
      #
      #   @param name [String, nil] Name of the meter
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

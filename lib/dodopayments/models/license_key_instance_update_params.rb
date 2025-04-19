# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeyInstances#update
    class LicenseKeyInstanceUpdateParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(name:, request_options: {})
      #   @param name [String]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

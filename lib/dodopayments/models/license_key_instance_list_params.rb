# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeyInstances#list
    class LicenseKeyInstanceListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute license_key_id
      #   Filter by license key ID
      #
      #   @return [String, nil]
      optional :license_key_id, String, nil?: true

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer, nil?: true

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer, nil?: true

      # @!method initialize(license_key_id: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param license_key_id [String, nil] Filter by license key ID
      #
      #   @param page_number [Integer, nil] Page number default is 0
      #
      #   @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

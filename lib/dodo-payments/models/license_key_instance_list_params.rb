# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseKeyInstanceListParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

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

      # @!parse
      #   # @param license_key_id [String, nil]
      #   # @param page_number [Integer, nil]
      #   # @param page_size [Integer, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(license_key_id: nil, page_number: nil, page_size: nil, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end

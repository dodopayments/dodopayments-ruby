# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeys#list
    class LicenseKeyListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   Filter by customer ID
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

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

      # @!attribute product_id
      #   Filter by product ID
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute status
      #   Filter by license key status
      #
      #   @return [Symbol, Dodopayments::LicenseKeyStatus, nil]
      optional :status, enum: -> { Dodopayments::LicenseKeyStatus }, nil?: true

      # @!method initialize(customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, request_options: {})
      #   @param customer_id [String, nil] Filter by customer ID
      #
      #   @param page_number [Integer, nil] Page number default is 0
      #
      #   @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      #   @param product_id [String, nil] Filter by product ID
      #
      #   @param status [Symbol, Dodopayments::LicenseKeyStatus, nil] Filter by license key status
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

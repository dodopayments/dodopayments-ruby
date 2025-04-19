# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeys#list
    class LicenseKeyListParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
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
      #   @return [Symbol, Dodopayments::Models::LicenseKeyStatus, nil]
      optional :status, enum: -> { Dodopayments::Models::LicenseKeyStatus }, nil?: true

      # @!method initialize(customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, request_options: {})
      #   @param customer_id [String, nil]
      #   @param page_number [Integer, nil]
      #   @param page_size [Integer, nil]
      #   @param product_id [String, nil]
      #   @param status [Symbol, Dodopayments::Models::LicenseKeyStatus, nil]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

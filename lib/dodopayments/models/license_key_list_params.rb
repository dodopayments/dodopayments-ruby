# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeys#list
    class LicenseKeyListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute created_at_gte
      #   Filter license keys created on or after this timestamp
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time

      # @!attribute created_at_lte
      #   Filter license keys created on or before this timestamp
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time

      # @!attribute customer_id
      #   Filter by customer ID
      #
      #   @return [String, nil]
      optional :customer_id, String

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute product_id
      #   Filter by product ID
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute status
      #   Filter by license key status
      #
      #   @return [Symbol, Dodopayments::Models::LicenseKeyListParams::Status, nil]
      optional :status, enum: -> { Dodopayments::LicenseKeyListParams::Status }

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, request_options: {})
      #   @param created_at_gte [Time] Filter license keys created on or after this timestamp
      #
      #   @param created_at_lte [Time] Filter license keys created on or before this timestamp
      #
      #   @param customer_id [String] Filter by customer ID
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param product_id [String] Filter by product ID
      #
      #   @param status [Symbol, Dodopayments::Models::LicenseKeyListParams::Status] Filter by license key status
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Filter by license key status
      module Status
        extend Dodopayments::Internal::Type::Enum

        ACTIVE = :active
        EXPIRED = :expired
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

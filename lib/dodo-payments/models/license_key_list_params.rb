# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseKeyListParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

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
      #   @return [Symbol, DodoPayments::Models::LicenseKeyListParams::Status, nil]
      optional :status, enum: -> { DodoPayments::Models::LicenseKeyListParams::Status }, nil?: true

      # @!parse
      #   # @param customer_id [String, nil]
      #   # @param page_number [Integer, nil]
      #   # @param page_size [Integer, nil]
      #   # @param product_id [String, nil]
      #   # @param status [Symbol, DodoPayments::Models::LicenseKeyListParams::Status, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      #
      # Filter by license key status
      class Status < DodoPayments::Enum
        ACTIVE = :active
        EXPIRED = :expired
        DISABLED = :disabled

        finalize!
      end
    end
  end
end

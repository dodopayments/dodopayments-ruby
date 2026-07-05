# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#list_entitlement_grants
    class CustomerListEntitlementGrantsParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute integration_type
      #   Filter by integration type (e.g. `feature_flag`)
      #
      #   @return [Symbol, Dodopayments::Models::CustomerListEntitlementGrantsParams::IntegrationType, nil]
      optional :integration_type,
               enum: -> { Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType }

      # @!attribute page_number
      #   Page number (default 0)
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size (default 10, max 100)
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute status
      #   Filter by grant status
      #
      #   @return [Symbol, Dodopayments::Models::CustomerListEntitlementGrantsParams::Status, nil]
      optional :status, enum: -> { Dodopayments::CustomerListEntitlementGrantsParams::Status }

      # @!method initialize(customer_id:, integration_type: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
      #   @param customer_id [String]
      #
      #   @param integration_type [Symbol, Dodopayments::Models::CustomerListEntitlementGrantsParams::IntegrationType] Filter by integration type (e.g. `feature_flag`)
      #
      #   @param page_number [Integer] Page number (default 0)
      #
      #   @param page_size [Integer] Page size (default 10, max 100)
      #
      #   @param status [Symbol, Dodopayments::Models::CustomerListEntitlementGrantsParams::Status] Filter by grant status
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Filter by integration type (e.g. `feature_flag`)
      module IntegrationType
        extend Dodopayments::Internal::Type::Enum

        DISCORD = :discord
        TELEGRAM = :telegram
        GITHUB = :github
        FIGMA = :figma
        FRAMER = :framer
        NOTION = :notion
        DIGITAL_FILES = :digital_files
        LICENSE_KEY = :license_key
        FEATURE_FLAG = :feature_flag

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by grant status
      module Status
        extend Dodopayments::Internal::Type::Enum

        PENDING = :Pending
        DELIVERED = :Delivered
        FAILED = :Failed
        REVOKED = :Revoked

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

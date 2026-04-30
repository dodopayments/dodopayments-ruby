# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Entitlements#list
    class EntitlementListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute integration_type
      #   Filter by integration type
      #
      #   @return [Symbol, Dodopayments::Models::EntitlementListParams::IntegrationType, nil]
      optional :integration_type, enum: -> { Dodopayments::EntitlementListParams::IntegrationType }

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

      # @!method initialize(integration_type: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param integration_type [Symbol, Dodopayments::Models::EntitlementListParams::IntegrationType] Filter by integration type
      #
      #   @param page_number [Integer] Page number (default 0)
      #
      #   @param page_size [Integer] Page size (default 10, max 100)
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Filter by integration type
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

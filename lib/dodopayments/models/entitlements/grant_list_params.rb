# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Grants#list
      class GrantListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer_id
        #   Filter by customer ID
        #
        #   @return [String, nil]
        optional :customer_id, String

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
        #   @return [Symbol, Dodopayments::Models::Entitlements::GrantListParams::Status, nil]
        optional :status, enum: -> { Dodopayments::Entitlements::GrantListParams::Status }

        # @!method initialize(id:, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
        #   @param id [String]
        #
        #   @param customer_id [String] Filter by customer ID
        #
        #   @param page_number [Integer] Page number (default 0)
        #
        #   @param page_size [Integer] Page size (default 10, max 100)
        #
        #   @param status [Symbol, Dodopayments::Models::Entitlements::GrantListParams::Status] Filter by grant status
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

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
end

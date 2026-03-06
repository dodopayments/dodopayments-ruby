# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#list_grants
      class BalanceListGrantsParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

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

        # @!attribute status
        #   Filter by grant status: active, expired, depleted
        #
        #   @return [Symbol, Dodopayments::Models::CreditEntitlements::BalanceListGrantsParams::Status, nil]
        optional :status, enum: -> { Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status }

        # @!method initialize(credit_entitlement_id:, customer_id:, page_number: nil, page_size: nil, status: nil, request_options: {})
        #   @param credit_entitlement_id [String]
        #
        #   @param customer_id [String]
        #
        #   @param page_number [Integer] Page number default is 0
        #
        #   @param page_size [Integer] Page size default is 10 max is 100
        #
        #   @param status [Symbol, Dodopayments::Models::CreditEntitlements::BalanceListGrantsParams::Status] Filter by grant status: active, expired, depleted
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

        # Filter by grant status: active, expired, depleted
        module Status
          extend Dodopayments::Internal::Type::Enum

          ACTIVE = :active
          EXPIRED = :expired
          DEPLETED = :depleted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

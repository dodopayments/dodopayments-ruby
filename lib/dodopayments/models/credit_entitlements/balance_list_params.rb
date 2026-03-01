# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#list
      class BalanceListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   Filter by specific customer ID
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

        # @!method initialize(customer_id: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param customer_id [String] Filter by specific customer ID
        #
        #   @param page_number [Integer] Page number default is 0
        #
        #   @param page_size [Integer] Page size default is 10 max is 100
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

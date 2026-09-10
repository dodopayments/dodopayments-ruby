# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::Emails#list
      class EmailListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute page_number
        #   Which page to return. The default is 0.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   How many emails to return. The default is 10 and the maximum is 100.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(customer_id:, page_number: nil, page_size: nil, request_options: {})
        #   @param customer_id [String]
        #
        #   @param page_number [Integer] Which page to return. The default is 0.
        #
        #   @param page_size [Integer] How many emails to return. The default is 10 and the maximum is 100.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

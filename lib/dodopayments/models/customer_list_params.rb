# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#list
    class CustomerListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute created_at_gte
      #   Filter customers created on or after this timestamp
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time

      # @!attribute created_at_lte
      #   Filter customers created on or before this timestamp
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time

      # @!attribute email
      #   Filter by customer email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #   Filter by customer name (partial match, case-insensitive)
      #
      #   @return [String, nil]
      optional :name, String

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

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, email: nil, name: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param created_at_gte [Time] Filter customers created on or after this timestamp
      #
      #   @param created_at_lte [Time] Filter customers created on or before this timestamp
      #
      #   @param email [String] Filter by customer email
      #
      #   @param name [String] Filter by customer name (partial match, case-insensitive)
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

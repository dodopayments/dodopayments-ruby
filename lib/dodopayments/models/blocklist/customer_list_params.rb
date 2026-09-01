# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      # @see Dodopayments::Resources::Blocklist::Customers#list
      class CustomerListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute blocked_by_email
        #   Filter by the dashboard user who blocked the customer.
        #
        #   @return [String, nil]
        optional :blocked_by_email, String, nil?: true

        # @!attribute created_at_gte
        #   Blocked on or after this time.
        #
        #   @return [Time, nil]
        optional :created_at_gte, Time, nil?: true

        # @!attribute created_at_lte
        #   Blocked on or before this time.
        #
        #   @return [Time, nil]
        optional :created_at_lte, Time, nil?: true

        # @!attribute identifier
        #   Partial, case-insensitive match on the email and on the customer id.
        #
        #   @return [String, nil]
        optional :identifier, String, nil?: true

        # @!attribute page_number
        #   Page number. Default 0.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer, nil?: true

        # @!attribute page_size
        #   Page size. Default 10, maximum 100.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer, nil?: true

        # @!method initialize(blocked_by_email: nil, created_at_gte: nil, created_at_lte: nil, identifier: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param blocked_by_email [String, nil] Filter by the dashboard user who blocked the customer.
        #
        #   @param created_at_gte [Time, nil] Blocked on or after this time.
        #
        #   @param created_at_lte [Time, nil] Blocked on or before this time.
        #
        #   @param identifier [String, nil] Partial, case-insensitive match on the email and on the customer id.
        #
        #   @param page_number [Integer, nil] Page number. Default 0.
        #
        #   @param page_size [Integer, nil] Page size. Default 10, maximum 100.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payouts#list
    class PayoutListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute created_at_gte
      #   Get payouts created after this time (inclusive)
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time

      # @!attribute created_at_lte
      #   Get payouts created before this time (inclusive)
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time

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

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param created_at_gte [Time] Get payouts created after this time (inclusive)
      #
      #   @param created_at_lte [Time] Get payouts created before this time (inclusive)
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

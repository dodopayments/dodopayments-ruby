# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#retrieve_usage_history
    class SubscriptionRetrieveUsageHistoryParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute end_date
      #   Filter by end date (inclusive)
      #
      #   @return [Time, nil]
      optional :end_date, Time, nil?: true

      # @!attribute meter_id
      #   Filter by specific meter ID
      #
      #   @return [String, nil]
      optional :meter_id, String, nil?: true

      # @!attribute page_number
      #   Page number (default: 0)
      #
      #   @return [Integer, nil]
      optional :page_number, Integer, nil?: true

      # @!attribute page_size
      #   Page size (default: 10, max: 100)
      #
      #   @return [Integer, nil]
      optional :page_size, Integer, nil?: true

      # @!attribute start_date
      #   Filter by start date (inclusive)
      #
      #   @return [Time, nil]
      optional :start_date, Time, nil?: true

      # @!method initialize(end_date: nil, meter_id: nil, page_number: nil, page_size: nil, start_date: nil, request_options: {})
      #   @param end_date [Time, nil] Filter by end date (inclusive)
      #
      #   @param meter_id [String, nil] Filter by specific meter ID
      #
      #   @param page_number [Integer, nil] Page number (default: 0)
      #
      #   @param page_size [Integer, nil] Page size (default: 10, max: 100)
      #
      #   @param start_date [Time, nil] Filter by start date (inclusive)
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

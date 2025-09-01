# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::UsageEvents#list
    class UsageEventListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   Filter events by customer ID
      #
      #   @return [String, nil]
      optional :customer_id, String

      # @!attribute end_
      #   Filter events created before this timestamp
      #
      #   @return [Time, nil]
      optional :end_, Time

      # @!attribute event_name
      #   Filter events by event name. If both event_name and meter_id are provided, they
      #   must match the meter's configured event_name
      #
      #   @return [String, nil]
      optional :event_name, String

      # @!attribute meter_id
      #   Filter events by meter ID. When provided, only events that match the meter's
      #   event_name and filter criteria will be returned
      #
      #   @return [String, nil]
      optional :meter_id, String

      # @!attribute page_number
      #   Page number (0-based, default: 0)
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of events to return per page (default: 10)
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute start
      #   Filter events created after this timestamp
      #
      #   @return [Time, nil]
      optional :start, Time

      # @!method initialize(customer_id: nil, end_: nil, event_name: nil, meter_id: nil, page_number: nil, page_size: nil, start: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::UsageEventListParams} for more details.
      #
      #   @param customer_id [String] Filter events by customer ID
      #
      #   @param end_ [Time] Filter events created before this timestamp
      #
      #   @param event_name [String] Filter events by event name. If both event_name and meter_id are provided, they
      #
      #   @param meter_id [String] Filter events by meter ID. When provided, only events that match the meter's eve
      #
      #   @param page_number [Integer] Page number (0-based, default: 0)
      #
      #   @param page_size [Integer] Number of events to return per page (default: 10)
      #
      #   @param start [Time] Filter events created after this timestamp
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

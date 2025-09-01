# frozen_string_literal: true

module Dodopayments
  module Resources
    class UsageEvents
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::UsageEventRetrieveParams} for more details.
      #
      # Fetch detailed information about a single event using its unique event ID. This
      # endpoint is useful for:
      #
      # - Debugging specific event ingestion issues
      # - Retrieving event details for customer support
      # - Validating that events were processed correctly
      # - Getting the complete metadata for an event
      #
      # ## Event ID Format:
      #
      # The event ID should be the same value that was provided during event ingestion
      # via the `/events/ingest` endpoint. Event IDs are case-sensitive and must match
      # exactly.
      #
      # ## Response Details:
      #
      # The response includes all event data including:
      #
      # - Complete metadata key-value pairs
      # - Original timestamp (preserved from ingestion)
      # - Customer and business association
      # - Event name and processing information
      #
      # ## Example Usage:
      #
      # ```text
      # GET /events/api_call_12345
      # ```
      #
      # @overload retrieve(event_id, request_options: {})
      #
      # @param event_id [String] Unique event identifier (case-sensitive, must match the ID used during ingestion
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Event]
      #
      # @see Dodopayments::Models::UsageEventRetrieveParams
      def retrieve(event_id, params = {})
        @client.request(
          method: :get,
          path: ["events/%1$s", event_id],
          model: Dodopayments::Event,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::UsageEventListParams} for more details.
      #
      # Fetch events from your account with powerful filtering capabilities. This
      # endpoint is ideal for:
      #
      # - Debugging event ingestion issues
      # - Analyzing customer usage patterns
      # - Building custom analytics dashboards
      # - Auditing billing-related events
      #
      # ## Filtering Options:
      #
      # - **Customer filtering**: Filter by specific customer ID
      # - **Event name filtering**: Filter by event type/name
      # - **Meter-based filtering**: Use a meter ID to apply the meter's event name and
      #   filter criteria automatically
      # - **Time range filtering**: Filter events within a specific date range
      # - **Pagination**: Navigate through large result sets
      #
      # ## Meter Integration:
      #
      # When using `meter_id`, the endpoint automatically applies:
      #
      # - The meter's configured `event_name` filter
      # - The meter's custom filter criteria (if any)
      # - If you also provide `event_name`, it must match the meter's event name
      #
      # ## Example Queries:
      #
      # - Get all events for a customer: `?customer_id=cus_abc123`
      # - Get API request events: `?event_name=api_request`
      # - Get events from last 24 hours:
      #   `?start=2024-01-14T10:30:00Z&end=2024-01-15T10:30:00Z`
      # - Get events with meter filtering: `?meter_id=mtr_xyz789`
      # - Paginate results: `?page_size=50&page_number=2`
      #
      # @overload list(customer_id: nil, end_: nil, event_name: nil, meter_id: nil, page_number: nil, page_size: nil, start: nil, request_options: {})
      #
      # @param customer_id [String] Filter events by customer ID
      #
      # @param end_ [Time] Filter events created before this timestamp
      #
      # @param event_name [String] Filter events by event name. If both event_name and meter_id are provided, they
      #
      # @param meter_id [String] Filter events by meter ID. When provided, only events that match the meter's eve
      #
      # @param page_number [Integer] Page number (0-based, default: 0)
      #
      # @param page_size [Integer] Number of events to return per page (default: 10)
      #
      # @param start [Time] Filter events created after this timestamp
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Event>]
      #
      # @see Dodopayments::Models::UsageEventListParams
      def list(params = {})
        parsed, options = Dodopayments::UsageEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "events",
          query: parsed.transform_keys(end_: "end"),
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Event,
          options: options
        )
      end

      # This endpoint allows you to ingest custom events that can be used for:
      #
      # - Usage-based billing and metering
      # - Analytics and reporting
      # - Customer behavior tracking
      #
      # ## Important Notes:
      #
      # - **Duplicate Prevention**:
      #   - Duplicate `event_id` values within the same request are rejected (entire
      #     request fails)
      #   - Subsequent requests with existing `event_id` values are ignored (idempotent
      #     behavior)
      # - **Rate Limiting**: Maximum 1000 events per request
      # - **Time Validation**: Events with timestamps older than 1 hour or more than 5
      #   minutes in the future will be rejected
      # - **Metadata Limits**: Maximum 50 key-value pairs per event, keys max 100 chars,
      #   values max 500 chars
      #
      # ## Example Usage:
      #
      # ```json
      # {
      #   "events": [
      #     {
      #       "event_id": "api_call_12345",
      #       "customer_id": "cus_abc123",
      #       "event_name": "api_request",
      #       "timestamp": "2024-01-15T10:30:00Z",
      #       "metadata": {
      #         "endpoint": "/api/v1/users",
      #         "method": "GET",
      #         "tokens_used": "150"
      #       }
      #     }
      #   ]
      # }
      # ```
      #
      # @overload ingest(events:, request_options: {})
      #
      # @param events [Array<Dodopayments::Models::EventInput>] List of events to be pushed
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::UsageEventIngestResponse]
      #
      # @see Dodopayments::Models::UsageEventIngestParams
      def ingest(params)
        parsed, options = Dodopayments::UsageEventIngestParams.dump_request(params)
        @client.request(
          method: :post,
          path: "events/ingest",
          body: parsed,
          model: Dodopayments::Models::UsageEventIngestResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

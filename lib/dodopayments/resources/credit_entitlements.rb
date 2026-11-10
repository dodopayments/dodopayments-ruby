# frozen_string_literal: true

module Dodopayments
  module Resources
    class CreditEntitlements
      # @return [Dodopayments::Resources::CreditEntitlements::Balances]
      attr_reader :balances

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::CreditEntitlementCreateParams} for more details.
      #
      # Credit entitlements define reusable credit templates that can be attached to
      # products. Each entitlement defines how credits behave in terms of expiration,
      # rollover, and overage.
      #
      # # Authentication
      #
      # Requires an API key with `Editor` role.
      #
      # # Request Body
      #
      # - `name` - Human-readable name of the credit entitlement (1-255 characters,
      #   required)
      # - `description` - Optional description (max 1000 characters)
      # - `precision` - Decimal precision for credit amounts (0-10 decimal places)
      # - `unit` - Unit of measurement for the credit (e.g., "API Calls", "Tokens",
      #   "Credits")
      # - `expires_after_days` - Number of days after which credits expire (optional)
      # - `rollover_enabled` - Whether unused credits can rollover to the next period
      # - `rollover_percentage` - Percentage of unused credits that rollover (0-100)
      # - `rollover_timeframe_count` - Count of timeframe periods for rollover limit
      # - `rollover_timeframe_interval` - Interval type (day, week, month, year)
      # - `max_rollover_count` - Maximum number of times credits can be rolled over
      # - `overage_enabled` - Whether overage charges apply when credits run out
      #   (requires price_per_unit)
      # - `overage_limit` - Maximum overage units allowed (optional)
      # - `currency` - Currency for pricing (required if price_per_unit is set)
      # - `price_per_unit` - Price per credit unit (decimal)
      #
      # # Responses
      #
      # - `201 Created` - Credit entitlement created successfully, returns the full
      #   entitlement object
      # - `422 Unprocessable Entity` - Invalid request parameters or validation failure
      # - `500 Internal Server Error` - Database or server error
      #
      # # Business Logic
      #
      # - A unique ID with prefix `cde_` is automatically generated for the entitlement
      # - Created and updated timestamps are automatically set
      # - Currency is required when price_per_unit is set
      # - price_per_unit is required when overage_enabled is true
      # - rollover_timeframe_count and rollover_timeframe_interval must both be set or
      #   both be null
      #
      # @overload create(name:, overage_enabled:, precision:, rollover_enabled:, unit:, currency: nil, description: nil, expires_after_days: nil, max_rollover_count: nil, overage_behavior: nil, overage_limit: nil, price_per_unit: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil, request_options: {})
      #
      # @param name [String] Name of the credit entitlement
      #
      # @param overage_enabled [Boolean] Whether overage charges are enabled when credits run out
      #
      # @param precision [Integer] Precision for credit amounts (0-10 decimal places)
      #
      # @param rollover_enabled [Boolean] Whether rollover is enabled for unused credits
      #
      # @param unit [String] Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
      #
      # @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency for pricing (required if price_per_unit is set)
      #
      # @param description [String, nil] Optional description of the credit entitlement
      #
      # @param expires_after_days [Integer, nil] Number of days after which credits expire (optional)
      #
      # @param max_rollover_count [Integer, nil] Maximum number of times credits can be rolled over
      #
      # @param overage_behavior [Symbol, Dodopayments::Models::CbbOverageBehavior, nil] Controls how overage is handled at billing cycle end.
      #
      # @param overage_limit [Integer, nil] Maximum overage units allowed (optional)
      #
      # @param price_per_unit [String, nil] Price per credit unit
      #
      # @param rollover_percentage [Integer, nil] Percentage of unused credits that can rollover (0-100)
      #
      # @param rollover_timeframe_count [Integer, nil] Count of timeframe periods for rollover limit
      #
      # @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Interval type for rollover timeframe
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::CreditEntitlement]
      #
      # @see Dodopayments::Models::CreditEntitlementCreateParams
      def create(params)
        parsed, options = Dodopayments::CreditEntitlementCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "credit-entitlements",
          body: parsed,
          model: Dodopayments::CreditEntitlement,
          options: options
        )
      end

      # Returns the full details of a single credit entitlement including all
      # configuration settings for expiration, rollover, and overage policies.
      #
      # # Authentication
      #
      # Requires an API key with `Viewer` role or higher.
      #
      # # Path Parameters
      #
      # - `id` - The unique identifier of the credit entitlement (format: `cde_...`)
      #
      # # Responses
      #
      # - `200 OK` - Returns the full credit entitlement object
      # - `404 Not Found` - Credit entitlement does not exist or does not belong to the
      #   authenticated business
      # - `500 Internal Server Error` - Database or server error
      #
      # # Business Logic
      #
      # - Only non-deleted credit entitlements can be retrieved through this endpoint
      # - The entitlement must belong to the authenticated business (business_id check)
      # - Deleted entitlements return a 404 error and must be retrieved via the list
      #   endpoint with `deleted=true`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Credit Entitlement ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::CreditEntitlement]
      #
      # @see Dodopayments::Models::CreditEntitlementRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["credit-entitlements/%1$s", id],
          model: Dodopayments::CreditEntitlement,
          options: params[:request_options]
        )
      end

      # Allows partial updates to a credit entitlement's configuration. Only the fields
      # provided in the request body will be updated; all other fields remain unchanged.
      # This endpoint supports nullable fields using the double option pattern.
      #
      # # Authentication
      #
      # Requires an API key with `Editor` role.
      #
      # # Path Parameters
      #
      # - `id` - The unique identifier of the credit entitlement to update (format:
      #   `cde_...`)
      #
      # # Request Body (all fields optional)
      #
      # - `name` - Human-readable name of the credit entitlement (1-255 characters)
      # - `description` - Optional description (max 1000 characters)
      # - `unit` - Unit of measurement for the credit (1-50 characters)
      #
      # Note: `precision` cannot be modified after creation as it would invalidate
      # existing grants.
      #
      # - `expires_after_days` - Number of days after which credits expire (use `null`
      #   to remove expiration)
      # - `rollover_enabled` - Whether unused credits can rollover to the next period
      # - `rollover_percentage` - Percentage of unused credits that rollover (0-100,
      #   nullable)
      # - `rollover_timeframe_count` - Count of timeframe periods for rollover limit
      #   (nullable)
      # - `rollover_timeframe_interval` - Interval type (day, week, month, year,
      #   nullable)
      # - `max_rollover_count` - Maximum number of times credits can be rolled over
      #   (nullable)
      # - `overage_enabled` - Whether overage charges apply when credits run out
      # - `overage_limit` - Maximum overage units allowed (nullable)
      # - `currency` - Currency for pricing (nullable)
      # - `price_per_unit` - Price per credit unit (decimal, nullable)
      #
      # # Responses
      #
      # - `200 OK` - Credit entitlement updated successfully
      # - `404 Not Found` - Credit entitlement does not exist or does not belong to the
      #   authenticated business
      # - `422 Unprocessable Entity` - Invalid request parameters or validation failure
      # - `500 Internal Server Error` - Database or server error
      #
      # # Business Logic
      #
      # - Only non-deleted credit entitlements can be updated
      # - Fields set to `null` explicitly will clear the database value (using double
      #   option pattern)
      # - The `updated_at` timestamp is automatically updated on successful modification
      # - Changes take effect immediately but do not retroactively affect existing
      #   credit grants
      # - The merged state is validated: currency required with price, rollover
      #   timeframe fields together, price required for overage
      #
      # @overload update(id, currency: nil, description: nil, expires_after_days: nil, max_rollover_count: nil, name: nil, overage_behavior: nil, overage_enabled: nil, overage_limit: nil, price_per_unit: nil, rollover_enabled: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil, unit: nil, request_options: {})
      #
      # @param id [String] Credit Entitlement ID
      #
      # @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency for pricing
      #
      # @param description [String, nil] Optional description of the credit entitlement
      #
      # @param expires_after_days [Integer, nil] Number of days after which credits expire
      #
      # @param max_rollover_count [Integer, nil] Maximum number of times credits can be rolled over
      #
      # @param name [String, nil] Name of the credit entitlement
      #
      # @param overage_behavior [Symbol, Dodopayments::Models::CbbOverageBehavior, nil] Controls how overage is handled at billing cycle end.
      #
      # @param overage_enabled [Boolean, nil] Whether overage charges are enabled when credits run out
      #
      # @param overage_limit [Integer, nil] Maximum overage units allowed
      #
      # @param price_per_unit [String, nil] Price per credit unit
      #
      # @param rollover_enabled [Boolean, nil] Whether rollover is enabled for unused credits
      #
      # @param rollover_percentage [Integer, nil] Percentage of unused credits that can rollover (0-100)
      #
      # @param rollover_timeframe_count [Integer, nil] Count of timeframe periods for rollover limit
      #
      # @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Interval type for rollover timeframe
      #
      # @param unit [String, nil] Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::CreditEntitlementUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::CreditEntitlementUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["credit-entitlements/%1$s", id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Returns a paginated list of credit entitlements, allowing filtering of deleted
      # entitlements. By default, only non-deleted entitlements are returned.
      #
      # # Authentication
      #
      # Requires an API key with `Viewer` role or higher.
      #
      # # Query Parameters
      #
      # - `page_size` - Number of items per page (default: 10, max: 100)
      # - `page_number` - Zero-based page number (default: 0)
      # - `deleted` - Boolean flag to list deleted entitlements instead of active ones
      #   (default: false)
      #
      # # Responses
      #
      # - `200 OK` - Returns a list of credit entitlements wrapped in a response object
      # - `422 Unprocessable Entity` - Invalid query parameters (e.g., page_size > 100)
      # - `500 Internal Server Error` - Database or server error
      #
      # # Business Logic
      #
      # - Results are ordered by creation date in descending order (newest first)
      # - Only entitlements belonging to the authenticated business are returned
      # - The `deleted` parameter controls visibility of soft-deleted entitlements
      # - Pagination uses offset-based pagination (offset = page_number \* page_size)
      #
      # @overload list(deleted: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param deleted [Boolean] List deleted credit entitlements
      #
      # @param page_number [Integer] Page number default is 0
      #
      # @param page_size [Integer] Page size default is 10 max is 100
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::CreditEntitlement>]
      #
      # @see Dodopayments::Models::CreditEntitlementListParams
      def list(params = {})
        parsed, options = Dodopayments::CreditEntitlementListParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "credit-entitlements",
          query: query,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::CreditEntitlement,
          options: options
        )
      end

      # @overload delete(id, request_options: {})
      #
      # @param id [String] Credit Entitlement ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::CreditEntitlementDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["credit-entitlements/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Undeletes a soft-deleted credit entitlement by clearing `deleted_at`, making it
      # available again through standard list and get endpoints.
      #
      # # Authentication
      #
      # Requires an API key with `Editor` role.
      #
      # # Path Parameters
      #
      # - `id` - The unique identifier of the credit entitlement to restore (format:
      #   `cde_...`)
      #
      # # Responses
      #
      # - `200 OK` - Credit entitlement restored successfully
      # - `500 Internal Server Error` - Database error, entitlement not found, or
      #   entitlement is not deleted
      #
      # # Business Logic
      #
      # - Only deleted credit entitlements can be restored
      # - The query filters for `deleted_at IS NOT NULL`, so non-deleted entitlements
      #   will result in 0 rows affected
      # - If no rows are affected (entitlement doesn't exist, doesn't belong to
      #   business, or is not deleted), returns 500
      # - The `updated_at` timestamp is automatically updated on successful restoration
      # - Once restored, the entitlement becomes immediately available in the standard
      #   list and get endpoints
      # - All configuration settings are preserved during delete/restore operations
      #
      # # Error Handling
      #
      # This endpoint returns 500 Internal Server Error in several cases:
      #
      # - The credit entitlement does not exist
      # - The credit entitlement belongs to a different business
      # - The credit entitlement is not currently deleted (already active)
      #
      # Callers should verify the entitlement exists and is deleted before calling this
      # endpoint.
      #
      # @overload undelete(id, request_options: {})
      #
      # @param id [String] Credit Entitlement ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::CreditEntitlementUndeleteParams
      def undelete(id, params = {})
        @client.request(
          method: :post,
          path: ["credit-entitlements/%1$s/undelete", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @balances = Dodopayments::Resources::CreditEntitlements::Balances.new(client: client)
      end
    end
  end
end

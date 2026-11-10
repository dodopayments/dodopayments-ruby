# typed: strong

module Dodopayments
  module Resources
    class CreditEntitlements
      sig { returns(Dodopayments::Resources::CreditEntitlements::Balances) }
      attr_reader :balances

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
      sig do
        params(
          name: String,
          overage_enabled: T::Boolean,
          precision: Integer,
          rollover_enabled: T::Boolean,
          unit: String,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          expires_after_days: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          overage_behavior:
            T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
          overage_limit: T.nilable(Integer),
          price_per_unit: T.nilable(String),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::CreditEntitlement)
      end
      def create(
        # Name of the credit entitlement
        name:,
        # Whether overage charges are enabled when credits run out
        overage_enabled:,
        # Precision for credit amounts (0-10 decimal places)
        precision:,
        # Whether rollover is enabled for unused credits
        rollover_enabled:,
        # Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
        unit:,
        # Currency for pricing (required if price_per_unit is set)
        currency: nil,
        # Optional description of the credit entitlement
        description: nil,
        # Number of days after which credits expire (optional)
        expires_after_days: nil,
        # Maximum number of times credits can be rolled over
        max_rollover_count: nil,
        # Controls how overage is handled at billing cycle end. Defaults to
        # forgive_at_reset if not specified.
        overage_behavior: nil,
        # Maximum overage units allowed (optional)
        overage_limit: nil,
        # Price per credit unit
        price_per_unit: nil,
        # Percentage of unused credits that can rollover (0-100)
        rollover_percentage: nil,
        # Count of timeframe periods for rollover limit
        rollover_timeframe_count: nil,
        # Interval type for rollover timeframe
        rollover_timeframe_interval: nil,
        request_options: {}
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
      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::CreditEntitlement)
      end
      def retrieve(
        # Credit Entitlement ID
        id,
        request_options: {}
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
      sig do
        params(
          id: String,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          expires_after_days: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          name: T.nilable(String),
          overage_behavior:
            T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
          overage_enabled: T.nilable(T::Boolean),
          overage_limit: T.nilable(Integer),
          price_per_unit: T.nilable(String),
          rollover_enabled: T.nilable(T::Boolean),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol),
          unit: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def update(
        # Credit Entitlement ID
        id,
        # Currency for pricing
        currency: nil,
        # Optional description of the credit entitlement
        description: nil,
        # Number of days after which credits expire
        expires_after_days: nil,
        # Maximum number of times credits can be rolled over
        max_rollover_count: nil,
        # Name of the credit entitlement
        name: nil,
        # Controls how overage is handled at billing cycle end.
        overage_behavior: nil,
        # Whether overage charges are enabled when credits run out
        overage_enabled: nil,
        # Maximum overage units allowed
        overage_limit: nil,
        # Price per credit unit
        price_per_unit: nil,
        # Whether rollover is enabled for unused credits
        rollover_enabled: nil,
        # Percentage of unused credits that can rollover (0-100)
        rollover_percentage: nil,
        # Count of timeframe periods for rollover limit
        rollover_timeframe_count: nil,
        # Interval type for rollover timeframe
        rollover_timeframe_interval: nil,
        # Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
        unit: nil,
        request_options: {}
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
      sig do
        params(
          deleted: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::CreditEntitlement
          ]
        )
      end
      def list(
        # List deleted credit entitlements
        deleted: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Credit Entitlement ID
        id,
        request_options: {}
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
      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def undelete(
        # Credit Entitlement ID
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Resources
    class CreditEntitlements
      class Balances
        # Returns the credit balance details for a specific customer and credit
        # entitlement.
        #
        # # Authentication
        #
        # Requires an API key with `Viewer` role or higher.
        #
        # # Path Parameters
        #
        # - `credit_entitlement_id` - The unique identifier of the credit entitlement
        # - `customer_id` - The unique identifier of the customer
        #
        # # Responses
        #
        # - `200 OK` - Returns the customer's balance
        # - `404 Not Found` - Credit entitlement or customer balance not found
        # - `500 Internal Server Error` - Database or server error
        sig do
          params(
            customer_id: String,
            credit_entitlement_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::CreditEntitlements::CustomerCreditBalance)
        end
        def retrieve(
          # Customer ID
          customer_id,
          # Credit Entitlement ID
          credit_entitlement_id:,
          request_options: {}
        )
        end

        # Returns a paginated list of customer credit balances for the given credit
        # entitlement.
        #
        # # Authentication
        #
        # Requires an API key with `Viewer` role or higher.
        #
        # # Path Parameters
        #
        # - `credit_entitlement_id` - The unique identifier of the credit entitlement
        #
        # # Query Parameters
        #
        # - `page_size` - Number of items per page (default: 10, max: 100)
        # - `page_number` - Zero-based page number (default: 0)
        # - `customer_id` - Optional filter by specific customer
        #
        # # Responses
        #
        # - `200 OK` - Returns list of customer balances
        # - `404 Not Found` - Credit entitlement not found
        # - `500 Internal Server Error` - Database or server error
        sig do
          params(
            credit_entitlement_id: String,
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Internal::DefaultPageNumberPagination[
              Dodopayments::CreditEntitlements::CustomerCreditBalance
            ]
          )
        end
        def list(
          # Credit Entitlement ID
          credit_entitlement_id,
          # Filter by specific customer ID
          customer_id: nil,
          # Page number default is 0
          page_number: nil,
          # Page size default is 10 max is 100
          page_size: nil,
          request_options: {}
        )
        end

        # For credit entries, a new grant is created. For debit entries, credits are
        # deducted from existing grants using FIFO (oldest first).
        #
        # # Authentication
        #
        # Requires an API key with `Editor` role.
        #
        # # Path Parameters
        #
        # - `credit_entitlement_id` - The unique identifier of the credit entitlement
        # - `customer_id` - The unique identifier of the customer
        #
        # # Request Body
        #
        # - `entry_type` - "credit" or "debit"
        # - `amount` - Amount to credit or debit
        # - `reason` - Optional human-readable reason
        # - `expires_at` - Optional expiration for credited amount (only for credit type)
        # - `idempotency_key` - Optional key to prevent duplicate entries
        #
        # # Responses
        #
        # - `201 Created` - Ledger entry created successfully
        # - `400 Bad Request` - Invalid request (e.g., debit with insufficient balance)
        # - `404 Not Found` - Credit entitlement or customer not found
        # - `409 Conflict` - Idempotency key already exists
        # - `500 Internal Server Error` - Database or server error
        sig do
          params(
            customer_id: String,
            credit_entitlement_id: String,
            amount: String,
            entry_type:
              Dodopayments::CreditEntitlements::LedgerEntryType::OrSymbol,
            expires_at: T.nilable(Time),
            idempotency_key: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            reason: T.nilable(String),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryResponse
          )
        end
        def create_ledger_entry(
          # Path param: Customer ID
          customer_id,
          # Path param: Credit Entitlement ID
          credit_entitlement_id:,
          # Body param: Amount to credit or debit
          amount:,
          # Body param: Entry type: credit or debit
          entry_type:,
          # Body param: Expiration for credited amount (only for credit type)
          expires_at: nil,
          # Body param: Idempotency key to prevent duplicate entries
          idempotency_key: nil,
          # Body param: Optional metadata (max 50 key-value pairs, key max 40 chars, value
          # max 500 chars)
          metadata: nil,
          # Body param: Human-readable reason for the entry
          reason: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of credit grants with optional filtering by status.
        #
        # # Authentication
        #
        # Requires an API key with `Viewer` role or higher.
        #
        # # Path Parameters
        #
        # - `credit_entitlement_id` - The unique identifier of the credit entitlement
        # - `customer_id` - The unique identifier of the customer
        #
        # # Query Parameters
        #
        # - `page_size` - Number of items per page (default: 10, max: 100)
        # - `page_number` - Zero-based page number (default: 0)
        # - `status` - Filter by status: active, expired, depleted
        #
        # # Responses
        #
        # - `200 OK` - Returns list of grants
        # - `404 Not Found` - Credit entitlement not found
        # - `500 Internal Server Error` - Database or server error
        sig do
          params(
            customer_id: String,
            credit_entitlement_id: String,
            page_number: Integer,
            page_size: Integer,
            status:
              Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::OrSymbol,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Internal::DefaultPageNumberPagination[
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse
            ]
          )
        end
        def list_grants(
          # Path param: Customer ID
          customer_id,
          # Path param: Credit Entitlement ID
          credit_entitlement_id:,
          # Query param: Page number default is 0
          page_number: nil,
          # Query param: Page size default is 10 max is 100
          page_size: nil,
          # Query param: Filter by grant status: active, expired, depleted
          status: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of credit transaction history with optional filtering.
        #
        # # Authentication
        #
        # Requires an API key with `Viewer` role or higher.
        #
        # # Path Parameters
        #
        # - `credit_entitlement_id` - The unique identifier of the credit entitlement
        # - `customer_id` - The unique identifier of the customer
        #
        # # Query Parameters
        #
        # - `page_size` - Number of items per page (default: 10, max: 100)
        # - `page_number` - Zero-based page number (default: 0)
        # - `transaction_type` - Filter by transaction type
        # - `start_date` - Filter entries from this date
        # - `end_date` - Filter entries until this date
        #
        # # Responses
        #
        # - `200 OK` - Returns list of ledger entries
        # - `404 Not Found` - Credit entitlement not found
        # - `500 Internal Server Error` - Database or server error
        sig do
          params(
            customer_id: String,
            credit_entitlement_id: String,
            end_date: Time,
            page_number: Integer,
            page_size: Integer,
            start_date: Time,
            transaction_type: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Internal::DefaultPageNumberPagination[
              Dodopayments::CreditEntitlements::CreditLedgerEntry
            ]
          )
        end
        def list_ledger(
          # Path param: Customer ID
          customer_id,
          # Path param: Credit Entitlement ID
          credit_entitlement_id:,
          # Query param: Filter by end date
          end_date: nil,
          # Query param: Page number default is 0
          page_number: nil,
          # Query param: Page size default is 10 max is 100
          page_size: nil,
          # Query param: Filter by start date
          start_date: nil,
          # Query param: Filter by transaction type (snake_case: credit_added,
          # credit_deducted, credit_expired, etc.)
          transaction_type: nil,
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
end

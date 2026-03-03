# frozen_string_literal: true

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
        #
        # @overload retrieve(customer_id, credit_entitlement_id:, request_options: {})
        #
        # @param customer_id [String] Customer ID
        #
        # @param credit_entitlement_id [String] Credit Entitlement ID
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::CreditEntitlements::CustomerCreditBalance]
        #
        # @see Dodopayments::Models::CreditEntitlements::BalanceRetrieveParams
        def retrieve(customer_id, params)
          parsed, options = Dodopayments::CreditEntitlements::BalanceRetrieveParams.dump_request(params)
          credit_entitlement_id =
            parsed.delete(:credit_entitlement_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["credit-entitlements/%1$s/balances/%2$s", credit_entitlement_id, customer_id],
            model: Dodopayments::CreditEntitlements::CustomerCreditBalance,
            options: options
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
        #
        # @overload list(credit_entitlement_id, customer_id: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param credit_entitlement_id [String] Credit Entitlement ID
        #
        # @param customer_id [String] Filter by specific customer ID
        #
        # @param page_number [Integer] Page number default is 0
        #
        # @param page_size [Integer] Page size default is 10 max is 100
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::CreditEntitlements::CustomerCreditBalance>]
        #
        # @see Dodopayments::Models::CreditEntitlements::BalanceListParams
        def list(credit_entitlement_id, params = {})
          parsed, options = Dodopayments::CreditEntitlements::BalanceListParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["credit-entitlements/%1$s/balances", credit_entitlement_id],
            query: query,
            page: Dodopayments::Internal::DefaultPageNumberPagination,
            model: Dodopayments::CreditEntitlements::CustomerCreditBalance,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryParams} for
        # more details.
        #
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
        #
        # @overload create_ledger_entry(customer_id, credit_entitlement_id:, amount:, entry_type:, expires_at: nil, idempotency_key: nil, metadata: nil, reason: nil, request_options: {})
        #
        # @param customer_id [String] Path param: Customer ID
        #
        # @param credit_entitlement_id [String] Path param: Credit Entitlement ID
        #
        # @param amount [String] Body param: Amount to credit or debit
        #
        # @param entry_type [Symbol, Dodopayments::Models::CreditEntitlements::LedgerEntryType] Body param: Entry type: credit or debit
        #
        # @param expires_at [Time, nil] Body param: Expiration for credited amount (only for credit type)
        #
        # @param idempotency_key [String, nil] Body param: Idempotency key to prevent duplicate entries
        #
        # @param metadata [Hash{Symbol=>String}, nil] Body param: Optional metadata (max 50 key-value pairs, key max 40 chars, value m
        #
        # @param reason [String, nil] Body param: Human-readable reason for the entry
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryResponse]
        #
        # @see Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryParams
        def create_ledger_entry(customer_id, params)
          parsed, options = Dodopayments::CreditEntitlements::BalanceCreateLedgerEntryParams.dump_request(params)
          credit_entitlement_id =
            parsed.delete(:credit_entitlement_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: [
              "credit-entitlements/%1$s/balances/%2$s/ledger-entries",
              credit_entitlement_id,
              customer_id
            ],
            body: parsed,
            model: Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryResponse,
            options: options
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
        #
        # @overload list_grants(customer_id, credit_entitlement_id:, page_number: nil, page_size: nil, status: nil, request_options: {})
        #
        # @param customer_id [String] Path param: Customer ID
        #
        # @param credit_entitlement_id [String] Path param: Credit Entitlement ID
        #
        # @param page_number [Integer] Query param: Page number default is 0
        #
        # @param page_size [Integer] Query param: Page size default is 10 max is 100
        #
        # @param status [Symbol, Dodopayments::Models::CreditEntitlements::BalanceListGrantsParams::Status] Query param: Filter by grant status: active, expired, depleted
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse>]
        #
        # @see Dodopayments::Models::CreditEntitlements::BalanceListGrantsParams
        def list_grants(customer_id, params)
          parsed, options = Dodopayments::CreditEntitlements::BalanceListGrantsParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          credit_entitlement_id =
            parsed.delete(:credit_entitlement_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["credit-entitlements/%1$s/balances/%2$s/grants", credit_entitlement_id, customer_id],
            query: query,
            page: Dodopayments::Internal::DefaultPageNumberPagination,
            model: Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::CreditEntitlements::BalanceListLedgerParams} for more
        # details.
        #
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
        #
        # @overload list_ledger(customer_id, credit_entitlement_id:, end_date: nil, page_number: nil, page_size: nil, start_date: nil, transaction_type: nil, request_options: {})
        #
        # @param customer_id [String] Path param: Customer ID
        #
        # @param credit_entitlement_id [String] Path param: Credit Entitlement ID
        #
        # @param end_date [Time] Query param: Filter by end date
        #
        # @param page_number [Integer] Query param: Page number default is 0
        #
        # @param page_size [Integer] Query param: Page size default is 10 max is 100
        #
        # @param start_date [Time] Query param: Filter by start date
        #
        # @param transaction_type [String] Query param: Filter by transaction type (snake_case: credit_added, credit_deduct
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::CreditEntitlements::CreditLedgerEntry>]
        #
        # @see Dodopayments::Models::CreditEntitlements::BalanceListLedgerParams
        def list_ledger(customer_id, params)
          parsed, options = Dodopayments::CreditEntitlements::BalanceListLedgerParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          credit_entitlement_id =
            parsed.delete(:credit_entitlement_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["credit-entitlements/%1$s/balances/%2$s/ledger", credit_entitlement_id, customer_id],
            query: query,
            page: Dodopayments::Internal::DefaultPageNumberPagination,
            model: Dodopayments::CreditEntitlements::CreditLedgerEntry,
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
end

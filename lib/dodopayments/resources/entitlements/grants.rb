# frozen_string_literal: true

module Dodopayments
  module Resources
    class Entitlements
      class Grants
        # GET /entitlements/{id}/grants (public API)
        #
        # @overload list(id, customer_id: nil, page_number: nil, page_size: nil, status: nil, request_options: {})
        #
        # @param id [String] Entitlement ID
        #
        # @param customer_id [String] Filter by customer ID
        #
        # @param page_number [Integer] Page number (default 0)
        #
        # @param page_size [Integer] Page size (default 10, max 100)
        #
        # @param status [Symbol, Dodopayments::Models::Entitlements::GrantListParams::Status] Filter by grant status
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Entitlements::EntitlementGrant>]
        #
        # @see Dodopayments::Models::Entitlements::GrantListParams
        def list(id, params = {})
          parsed, options = Dodopayments::Entitlements::GrantListParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["entitlements/%1$s/grants", id],
            query: query,
            page: Dodopayments::Internal::DefaultPageNumberPagination,
            model: Dodopayments::Entitlements::EntitlementGrant,
            options: options
          )
        end

        # Revokes a single entitlement grant for the caller's business. For LicenseKey
        # integrations, also disables the backing license key. Idempotent: re-revoking an
        # already-revoked grant returns 200 with current state. The revocation reason is
        # always set to "manual" for API-initiated revocations.
        #
        # @overload revoke(grant_id, id:, request_options: {})
        #
        # @param grant_id [String] Grant ID
        #
        # @param id [String] Entitlement ID
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Entitlements::EntitlementGrant]
        #
        # @see Dodopayments::Models::Entitlements::GrantRevokeParams
        def revoke(grant_id, params)
          parsed, options = Dodopayments::Entitlements::GrantRevokeParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["entitlements/%1$s/grants/%2$s", id, grant_id],
            model: Dodopayments::Entitlements::EntitlementGrant,
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

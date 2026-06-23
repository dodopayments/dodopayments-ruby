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

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Entitlements::GrantFulfillLicenseKeyParams} for more
        # details.
        #
        # For entitlements whose license-key config uses `manual` fulfillment, grants are
        # created in the `pending` state without a key. Call this endpoint to deliver the
        # key: the grant moves to `delivered`, the customer is emailed the key, and the
        # `license_key.created` and `entitlement_grant.delivered` webhook events are sent.
        #
        # @overload fulfill_license_key(grant_id, key:, activations_limit: nil, expires_at: nil, request_options: {})
        #
        # @param grant_id [String] Grant ID
        #
        # @param key [String] The license key value to deliver to the customer.
        #
        # @param activations_limit [Integer, nil] Per-key activation limit. Defaults to the entitlement's license-key configuratio
        #
        # @param expires_at [Time, nil] When the key expires. Defaults to the duration in the entitlement's license-key
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Entitlements::EntitlementGrant]
        #
        # @see Dodopayments::Models::Entitlements::GrantFulfillLicenseKeyParams
        def fulfill_license_key(grant_id, params)
          parsed, options = Dodopayments::Entitlements::GrantFulfillLicenseKeyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["grants/%1$s/license-key", grant_id],
            body: parsed,
            model: Dodopayments::Entitlements::EntitlementGrant,
            options: options
          )
        end

        # Revoke a single grant. Idempotent: re-revoking an already-revoked grant returns
        # the grant in its current state.
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

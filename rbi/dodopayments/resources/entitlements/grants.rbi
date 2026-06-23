# typed: strong

module Dodopayments
  module Resources
    class Entitlements
      class Grants
        # GET /entitlements/{id}/grants (public API)
        sig do
          params(
            id: String,
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            status:
              Dodopayments::Entitlements::GrantListParams::Status::OrSymbol,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Internal::DefaultPageNumberPagination[
              Dodopayments::Entitlements::EntitlementGrant
            ]
          )
        end
        def list(
          # Entitlement ID
          id,
          # Filter by customer ID
          customer_id: nil,
          # Page number (default 0)
          page_number: nil,
          # Page size (default 10, max 100)
          page_size: nil,
          # Filter by grant status
          status: nil,
          request_options: {}
        )
        end

        # For entitlements whose license-key config uses `manual` fulfillment, grants are
        # created in the `pending` state without a key. Call this endpoint to deliver the
        # key: the grant moves to `delivered`, the customer is emailed the key, and the
        # `license_key.created` and `entitlement_grant.delivered` webhook events are sent.
        sig do
          params(
            grant_id: String,
            key: String,
            activations_limit: T.nilable(Integer),
            expires_at: T.nilable(Time),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Entitlements::EntitlementGrant)
        end
        def fulfill_license_key(
          # Grant ID
          grant_id,
          # The license key value to deliver to the customer.
          key:,
          # Per-key activation limit. Defaults to the entitlement's license-key
          # configuration.
          activations_limit: nil,
          # When the key expires. Defaults to the duration in the entitlement's license-key
          # configuration.
          expires_at: nil,
          request_options: {}
        )
        end

        # Revoke a single grant. Idempotent: re-revoking an already-revoked grant returns
        # the grant in its current state.
        sig do
          params(
            grant_id: String,
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Entitlements::EntitlementGrant)
        end
        def revoke(
          # Grant ID
          grant_id,
          # Entitlement ID
          id:,
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

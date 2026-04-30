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
              Dodopayments::Models::Entitlements::GrantListResponse
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

        # Revokes a single entitlement grant for the caller's business. For LicenseKey
        # integrations, also disables the backing license key. Idempotent: re-revoking an
        # already-revoked grant returns 200 with current state. The revocation reason is
        # always set to "manual" for API-initiated revocations.
        sig do
          params(
            grant_id: String,
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Models::Entitlements::GrantRevokeResponse)
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

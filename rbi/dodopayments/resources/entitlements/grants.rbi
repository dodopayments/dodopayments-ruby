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
            integration_type:
              Dodopayments::Entitlements::GrantListParams::IntegrationType::OrSymbol,
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
          # Filter by integration type
          integration_type: nil,
          # Page number (default 0)
          page_number: nil,
          # Page size (default 10, max 100)
          page_size: nil,
          # Filter by grant status
          status: nil,
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

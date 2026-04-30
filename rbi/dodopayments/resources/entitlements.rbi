# typed: strong

module Dodopayments
  module Resources
    class Entitlements
      sig { returns(Dodopayments::Resources::Entitlements::Files) }
      attr_reader :files

      sig { returns(Dodopayments::Resources::Entitlements::Grants) }
      attr_reader :grants

      # POST /entitlements
      sig do
        params(
          integration_config:
            T.any(
              Dodopayments::EntitlementCreateParams::IntegrationConfig::GitHubConfig::OrHash,
              Dodopayments::EntitlementCreateParams::IntegrationConfig::DiscordConfig::OrHash,
              Dodopayments::EntitlementCreateParams::IntegrationConfig::TelegramConfig::OrHash,
              Dodopayments::EntitlementCreateParams::IntegrationConfig::FigmaConfig::OrHash,
              Dodopayments::EntitlementCreateParams::IntegrationConfig::FramerConfig::OrHash,
              Dodopayments::EntitlementCreateParams::IntegrationConfig::NotionConfig::OrHash,
              Dodopayments::EntitlementCreateParams::IntegrationConfig::DigitalFilesConfig::OrHash,
              Dodopayments::EntitlementCreateParams::IntegrationConfig::LicenseKeyConfig::OrHash
            ),
          integration_type:
            Dodopayments::EntitlementCreateParams::IntegrationType::OrSymbol,
          name: String,
          description: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::EntitlementCreateResponse)
      end
      def create(
        # Platform-specific configuration (validated per integration_type)
        integration_config:,
        # Which platform integration this entitlement uses
        integration_type:,
        # Display name for this entitlement
        name:,
        # Optional description
        description: nil,
        # Optional user-facing metadata
        metadata: nil,
        request_options: {}
      )
      end

      # GET /entitlements/{id}
      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::EntitlementRetrieveResponse)
      end
      def retrieve(
        # Entitlement ID
        id,
        request_options: {}
      )
      end

      # PATCH /entitlements/{id}
      sig do
        params(
          id: String,
          description: T.nilable(String),
          integration_config:
            T.nilable(
              T.any(
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::GitHubConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::DiscordConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::TelegramConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::FigmaConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::FramerConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::NotionConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig::OrHash
              )
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          name: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::EntitlementUpdateResponse)
      end
      def update(
        # Entitlement ID
        id,
        description: nil,
        # Platform-specific configuration for an entitlement. Each variant uses unique
        # field names so `#[serde(untagged)]` can disambiguate correctly.
        integration_config: nil,
        metadata: nil,
        name: nil,
        request_options: {}
      )
      end

      # GET /entitlements
      sig do
        params(
          integration_type:
            Dodopayments::EntitlementListParams::IntegrationType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::EntitlementListResponse
          ]
        )
      end
      def list(
        # Filter by integration type
        integration_type: nil,
        # Page number (default 0)
        page_number: nil,
        # Page size (default 10, max 100)
        page_size: nil,
        request_options: {}
      )
      end

      # DELETE /entitlements/{id} (soft-delete)
      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Entitlement ID
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

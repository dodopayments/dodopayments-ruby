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
              Dodopayments::IntegrationConfig::FeatureFlagConfig::OrHash,
              Dodopayments::IntegrationConfig::GitHubConfig::OrHash,
              Dodopayments::IntegrationConfig::DiscordConfig::OrHash,
              Dodopayments::IntegrationConfig::TelegramConfig::OrHash,
              Dodopayments::IntegrationConfig::FigmaConfig::OrHash,
              Dodopayments::IntegrationConfig::FramerConfig::OrHash,
              Dodopayments::IntegrationConfig::NotionConfig::OrHash,
              Dodopayments::IntegrationConfig::DigitalFilesConfig::OrHash,
              Dodopayments::IntegrationConfig::LicenseKeyConfig::OrHash
            ),
          integration_type: Dodopayments::EntitlementIntegrationType::OrSymbol,
          name: String,
          description: T.nilable(String),
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Entitlement)
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
        # Additional metadata for the entitlement
        metadata: nil,
        request_options: {}
      )
      end

      # GET /entitlements/{id}
      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Entitlement)
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
                Dodopayments::IntegrationConfig::FeatureFlagConfig::OrHash,
                Dodopayments::IntegrationConfig::GitHubConfig::OrHash,
                Dodopayments::IntegrationConfig::DiscordConfig::OrHash,
                Dodopayments::IntegrationConfig::TelegramConfig::OrHash,
                Dodopayments::IntegrationConfig::FigmaConfig::OrHash,
                Dodopayments::IntegrationConfig::FramerConfig::OrHash,
                Dodopayments::IntegrationConfig::NotionConfig::OrHash,
                Dodopayments::IntegrationConfig::DigitalFilesConfig::OrHash,
                Dodopayments::IntegrationConfig::LicenseKeyConfig::OrHash
              )
            ),
          metadata:
            T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
          name: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Entitlement)
      end
      def update(
        # Entitlement ID
        id,
        description: nil,
        # Integration-specific configuration supplied when creating or updating an
        # entitlement. The shape required matches the entitlement's `integration_type`.
        #
        # Untagged enum: variants are matched in order. `FeatureFlag` must precede
        # `LicenseKey`, whose fields are all optional and would otherwise match a
        # `feature_flag` config.
        integration_config: nil,
        # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
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
            Dodopayments::Entitlement
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

# typed: strong

module Dodopayments
  module Models
    class ProductEntitlementSummary < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductEntitlementSummary,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
      # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
      # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
      # ID-only via [`IntegrationConfig`]; this enum is response-only.
      sig { returns(Dodopayments::IntegrationConfigResponse::Variants) }
      attr_accessor :integration_config

      sig { returns(Dodopayments::EntitlementIntegrationType::TaggedSymbol) }
      attr_accessor :integration_type

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Summary of an entitlement attached to a product.
      #
      # `integration_config` uses [`IntegrationConfigResponse`] (NOT the persisted
      # [`IntegrationConfig`]) so digital_files entitlements embed the resolved
      # `digital_files` object — matching what `GET /entitlements/{id}` returns. All
      # other variants pass through unchanged via `#[serde(untagged)]`.
      sig do
        params(
          id: String,
          integration_config:
            T.any(
              Dodopayments::IntegrationConfigResponse::GitHubConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::DiscordConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::TelegramConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::FigmaConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::FramerConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::NotionConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::OrHash
            ),
          integration_type: Dodopayments::EntitlementIntegrationType::OrSymbol,
          name: String,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
        # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
        # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
        # ID-only via [`IntegrationConfig`]; this enum is response-only.
        integration_config:,
        integration_type:,
        name:,
        description: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            integration_config:
              Dodopayments::IntegrationConfigResponse::Variants,
            integration_type:
              Dodopayments::EntitlementIntegrationType::TaggedSymbol,
            name: String,
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

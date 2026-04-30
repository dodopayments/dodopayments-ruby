# frozen_string_literal: true

module Dodopayments
  module Models
    class ProductEntitlementSummary < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute integration_config
      #   Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
      #   the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
      #   `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
      #   ID-only via [`IntegrationConfig`]; this enum is response-only.
      #
      #   @return [Dodopayments::Models::IntegrationConfigResponse::GitHubConfig, Dodopayments::Models::IntegrationConfigResponse::DiscordConfig, Dodopayments::Models::IntegrationConfigResponse::TelegramConfig, Dodopayments::Models::IntegrationConfigResponse::FigmaConfig, Dodopayments::Models::IntegrationConfigResponse::FramerConfig, Dodopayments::Models::IntegrationConfigResponse::NotionConfig, Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig, Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig]
      required :integration_config, union: -> { Dodopayments::IntegrationConfigResponse }

      # @!attribute integration_type
      #
      #   @return [Symbol, Dodopayments::Models::EntitlementIntegrationType]
      required :integration_type, enum: -> { Dodopayments::EntitlementIntegrationType }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(id:, integration_config:, integration_type:, name:, description: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductEntitlementSummary} for more details.
      #
      #   Summary of an entitlement attached to a product.
      #
      #   `integration_config` uses [`IntegrationConfigResponse`] (NOT the persisted
      #   [`IntegrationConfig`]) so digital_files entitlements embed the resolved
      #   `digital_files` object — matching what `GET /entitlements/{id}` returns. All
      #   other variants pass through unchanged via `#[serde(untagged)]`.
      #
      #   @param id [String]
      #
      #   @param integration_config [Dodopayments::Models::IntegrationConfigResponse::GitHubConfig, Dodopayments::Models::IntegrationConfigResponse::DiscordConfig, Dodopayments::Models::IntegrationConfigResponse::TelegramConfig, Dodopayments::Models::IntegrationConfigResponse::FigmaConfig, Dodopayments::Models::IntegrationConfigResponse::FramerConfig, Dodopayments::Models::IntegrationConfigResponse::NotionConfig, Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig, Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig] Public-facing variant of [`IntegrationConfig`]. Mirrors every variant
      #
      #   @param integration_type [Symbol, Dodopayments::Models::EntitlementIntegrationType]
      #
      #   @param name [String]
      #
      #   @param description [String, nil]
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Entitlements#create
    class Entitlement < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the entitlement.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #   Identifier of the business that owns this entitlement.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Timestamp when the entitlement was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute integration_config
      #   Integration-specific configuration. For `digital_files` entitlements this
      #   includes presigned download URLs for each attached file.
      #
      #   @return [Dodopayments::Models::IntegrationConfigResponse::GitHubConfig, Dodopayments::Models::IntegrationConfigResponse::DiscordConfig, Dodopayments::Models::IntegrationConfigResponse::TelegramConfig, Dodopayments::Models::IntegrationConfigResponse::FigmaConfig, Dodopayments::Models::IntegrationConfigResponse::FramerConfig, Dodopayments::Models::IntegrationConfigResponse::NotionConfig, Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig, Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig]
      required :integration_config, union: -> { Dodopayments::IntegrationConfigResponse }

      # @!attribute integration_type
      #   Platform integration this entitlement uses.
      #
      #   @return [Symbol, Dodopayments::Models::EntitlementIntegrationType]
      required :integration_type, enum: -> { Dodopayments::EntitlementIntegrationType }

      # @!attribute is_active
      #   Always `true` for entitlements returned by the public API; soft-deleted
      #   entitlements are not returned.
      #
      #   @return [Boolean]
      required :is_active, Dodopayments::Internal::Type::Boolean

      # @!attribute metadata
      #   Arbitrary key-value metadata supplied at creation or via PATCH.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute name
      #   Display name supplied at creation.
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #   Timestamp when the entitlement was last modified.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Optional description supplied at creation.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(id:, business_id:, created_at:, integration_config:, integration_type:, is_active:, metadata:, name:, updated_at:, description: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Entitlement} for more details.
      #
      #   Detailed view of a single entitlement: identity, integration type,
      #   integration-specific configuration, and metadata.
      #
      #   @param id [String] Unique identifier of the entitlement.
      #
      #   @param business_id [String] Identifier of the business that owns this entitlement.
      #
      #   @param created_at [Time] Timestamp when the entitlement was created.
      #
      #   @param integration_config [Dodopayments::Models::IntegrationConfigResponse::GitHubConfig, Dodopayments::Models::IntegrationConfigResponse::DiscordConfig, Dodopayments::Models::IntegrationConfigResponse::TelegramConfig, Dodopayments::Models::IntegrationConfigResponse::FigmaConfig, Dodopayments::Models::IntegrationConfigResponse::FramerConfig, Dodopayments::Models::IntegrationConfigResponse::NotionConfig, Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig, Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig] Integration-specific configuration. For `digital_files` entitlements
      #
      #   @param integration_type [Symbol, Dodopayments::Models::EntitlementIntegrationType] Platform integration this entitlement uses.
      #
      #   @param is_active [Boolean] Always `true` for entitlements returned by the public API;
      #
      #   @param metadata [Hash{Symbol=>String}] Arbitrary key-value metadata supplied at creation or via PATCH.
      #
      #   @param name [String] Display name supplied at creation.
      #
      #   @param updated_at [Time] Timestamp when the entitlement was last modified.
      #
      #   @param description [String, nil] Optional description supplied at creation.
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Entitlements#create
    class Entitlement < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

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

      # @!attribute is_active
      #
      #   @return [Boolean]
      required :is_active, Dodopayments::Internal::Type::Boolean

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, Dodopayments::Internal::Type::Unknown

      # @!method initialize(id:, business_id:, created_at:, integration_config:, integration_type:, is_active:, name:, updated_at:, description: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Entitlement} for more details.
      #
      #   @param id [String]
      #
      #   @param business_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param integration_config [Dodopayments::Models::IntegrationConfigResponse::GitHubConfig, Dodopayments::Models::IntegrationConfigResponse::DiscordConfig, Dodopayments::Models::IntegrationConfigResponse::TelegramConfig, Dodopayments::Models::IntegrationConfigResponse::FigmaConfig, Dodopayments::Models::IntegrationConfigResponse::FramerConfig, Dodopayments::Models::IntegrationConfigResponse::NotionConfig, Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig, Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig] Public-facing variant of [`IntegrationConfig`]. Mirrors every variant
      #
      #   @param integration_type [Symbol, Dodopayments::Models::EntitlementIntegrationType]
      #
      #   @param is_active [Boolean]
      #
      #   @param name [String]
      #
      #   @param updated_at [Time]
      #
      #   @param description [String, nil]
      #
      #   @param metadata [Object]
    end
  end
end

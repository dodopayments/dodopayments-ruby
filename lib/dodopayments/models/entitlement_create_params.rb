# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Entitlements#create
    class EntitlementCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute integration_config
      #   Platform-specific configuration (validated per integration_type)
      #
      #   @return [Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig]
      required :integration_config, union: -> { Dodopayments::IntegrationConfig }

      # @!attribute integration_type
      #   Which platform integration this entitlement uses
      #
      #   @return [Symbol, Dodopayments::Models::EntitlementIntegrationType]
      required :integration_type, enum: -> { Dodopayments::EntitlementIntegrationType }

      # @!attribute name
      #   Display name for this entitlement
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   Optional description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #   Optional user-facing metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!method initialize(integration_config:, integration_type:, name:, description: nil, metadata: nil, request_options: {})
      #   @param integration_config [Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig] Platform-specific configuration (validated per integration_type)
      #
      #   @param integration_type [Symbol, Dodopayments::Models::EntitlementIntegrationType] Which platform integration this entitlement uses
      #
      #   @param name [String] Display name for this entitlement
      #
      #   @param description [String, nil] Optional description
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Optional user-facing metadata
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

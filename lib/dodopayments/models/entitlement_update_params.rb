# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Entitlements#update
    class EntitlementUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute integration_config
      #   Platform-specific configuration for an entitlement. Each variant uses unique
      #   field names so `#[serde(untagged)]` can disambiguate correctly.
      #
      #   @return [Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig, nil]
      optional :integration_config, union: -> { Dodopayments::IntegrationConfig }, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(id:, description: nil, integration_config: nil, metadata: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::EntitlementUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param description [String, nil]
      #
      #   @param integration_config [Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig, nil] Platform-specific configuration for an entitlement.
      #
      #   @param metadata [Hash{Symbol=>String}, nil]
      #
      #   @param name [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

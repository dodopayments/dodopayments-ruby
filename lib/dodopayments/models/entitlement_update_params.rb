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
      #   Integration-specific configuration supplied when creating or updating an
      #   entitlement. The shape required matches the entitlement's `integration_type`.
      #
      #   Untagged enum: variants are matched in order. `FeatureFlag` must precede
      #   `LicenseKey`, whose fields are all optional and would otherwise match a
      #   `feature_flag` config.
      #
      #   @return [Dodopayments::Models::IntegrationConfig::FeatureFlagConfig, Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig, nil]
      optional :integration_config, union: -> { Dodopayments::IntegrationConfig }, nil?: true

      # @!attribute metadata
      #   Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata,
               -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] },
               nil?: true

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
      #   @param integration_config [Dodopayments::Models::IntegrationConfig::FeatureFlagConfig, Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig, nil] Integration-specific configuration supplied when creating or updating
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}, nil] Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @param name [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

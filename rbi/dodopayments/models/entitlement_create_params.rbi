# typed: strong

module Dodopayments
  module Models
    class EntitlementCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::EntitlementCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Platform-specific configuration (validated per integration_type)
      sig do
        returns(
          T.any(
            Dodopayments::IntegrationConfig::GitHubConfig,
            Dodopayments::IntegrationConfig::DiscordConfig,
            Dodopayments::IntegrationConfig::TelegramConfig,
            Dodopayments::IntegrationConfig::FigmaConfig,
            Dodopayments::IntegrationConfig::FramerConfig,
            Dodopayments::IntegrationConfig::NotionConfig,
            Dodopayments::IntegrationConfig::DigitalFilesConfig,
            Dodopayments::IntegrationConfig::LicenseKeyConfig
          )
        )
      end
      attr_accessor :integration_config

      # Which platform integration this entitlement uses
      sig { returns(Dodopayments::EntitlementIntegrationType::OrSymbol) }
      attr_accessor :integration_type

      # Display name for this entitlement
      sig { returns(String) }
      attr_accessor :name

      # Optional description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional user-facing metadata
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig do
        params(
          integration_config:
            T.any(
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
          metadata: T.nilable(T::Hash[Symbol, String]),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            integration_config:
              T.any(
                Dodopayments::IntegrationConfig::GitHubConfig,
                Dodopayments::IntegrationConfig::DiscordConfig,
                Dodopayments::IntegrationConfig::TelegramConfig,
                Dodopayments::IntegrationConfig::FigmaConfig,
                Dodopayments::IntegrationConfig::FramerConfig,
                Dodopayments::IntegrationConfig::NotionConfig,
                Dodopayments::IntegrationConfig::DigitalFilesConfig,
                Dodopayments::IntegrationConfig::LicenseKeyConfig
              ),
            integration_type:
              Dodopayments::EntitlementIntegrationType::OrSymbol,
            name: String,
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

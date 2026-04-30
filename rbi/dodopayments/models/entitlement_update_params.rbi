# typed: strong

module Dodopayments
  module Models
    class EntitlementUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::EntitlementUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Platform-specific configuration for an entitlement. Each variant uses unique
      # field names so `#[serde(untagged)]` can disambiguate correctly.
      sig do
        returns(
          T.nilable(
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
        )
      end
      attr_accessor :integration_config

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          id: String,
          description: T.nilable(String),
          integration_config:
            T.nilable(
              T.any(
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
          metadata: T.nilable(T::Hash[Symbol, String]),
          name: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        description: nil,
        # Platform-specific configuration for an entitlement. Each variant uses unique
        # field names so `#[serde(untagged)]` can disambiguate correctly.
        integration_config: nil,
        metadata: nil,
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            description: T.nilable(String),
            integration_config:
              T.nilable(
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
              ),
            metadata: T.nilable(T::Hash[Symbol, String]),
            name: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

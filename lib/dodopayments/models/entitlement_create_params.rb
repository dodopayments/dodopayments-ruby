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
      #   @return [Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::LicenseKeyConfig]
      required :integration_config, union: -> { Dodopayments::EntitlementCreateParams::IntegrationConfig }

      # @!attribute integration_type
      #   Which platform integration this entitlement uses
      #
      #   @return [Symbol, Dodopayments::Models::EntitlementCreateParams::IntegrationType]
      required :integration_type, enum: -> { Dodopayments::EntitlementCreateParams::IntegrationType }

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
      #   @param integration_config [Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::LicenseKeyConfig] Platform-specific configuration (validated per integration_type)
      #
      #   @param integration_type [Symbol, Dodopayments::Models::EntitlementCreateParams::IntegrationType] Which platform integration this entitlement uses
      #
      #   @param name [String] Display name for this entitlement
      #
      #   @param description [String, nil] Optional description
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Optional user-facing metadata
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Platform-specific configuration (validated per integration_type)
      module IntegrationConfig
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::GitHubConfig }

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::DiscordConfig }

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::TelegramConfig }

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::FigmaConfig }

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::FramerConfig }

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::NotionConfig }

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::DigitalFilesConfig }

        variant -> { Dodopayments::EntitlementCreateParams::IntegrationConfig::LicenseKeyConfig }

        class GitHubConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute permission
          #   One of: pull, push, admin, maintain, triage
          #
          #   @return [String]
          required :permission, String

          # @!attribute target_id
          #
          #   @return [String]
          required :target_id, String

          # @!method initialize(permission:, target_id:)
          #   @param permission [String] One of: pull, push, admin, maintain, triage
          #
          #   @param target_id [String]
        end

        class DiscordConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute guild_id
          #
          #   @return [String]
          required :guild_id, String

          # @!attribute role_id
          #
          #   @return [String, nil]
          optional :role_id, String, nil?: true

          # @!method initialize(guild_id:, role_id: nil)
          #   @param guild_id [String]
          #   @param role_id [String, nil]
        end

        class TelegramConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute chat_id
          #
          #   @return [String]
          required :chat_id, String

          # @!method initialize(chat_id:)
          #   @param chat_id [String]
        end

        class FigmaConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute figma_file_id
          #
          #   @return [String]
          required :figma_file_id, String

          # @!method initialize(figma_file_id:)
          #   @param figma_file_id [String]
        end

        class FramerConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute framer_template_id
          #
          #   @return [String]
          required :framer_template_id, String

          # @!method initialize(framer_template_id:)
          #   @param framer_template_id [String]
        end

        class NotionConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute notion_template_id
          #
          #   @return [String]
          required :notion_template_id, String

          # @!method initialize(notion_template_id:)
          #   @param notion_template_id [String]
        end

        class DigitalFilesConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute digital_file_ids
          #
          #   @return [Array<String>]
          required :digital_file_ids, Dodopayments::Internal::Type::ArrayOf[String]

          # @!attribute external_url
          #
          #   @return [String, nil]
          optional :external_url, String, nil?: true

          # @!attribute instructions
          #
          #   @return [String, nil]
          optional :instructions, String, nil?: true

          # @!attribute legacy_file_ids
          #   Three-way patchable field (mirrors the credit_entitlements pattern):
          #
          #   - omitted → preserve persisted (`None`)
          #   - `null` → clear (`Some(None)`)
          #   - `[...]` → replace (`Some(Some(...))`)
          #
          #   On Create / storage we collapse "clear" and empty-array to `None` so the
          #   persisted JSONB never carries a `null` legacy_file_ids key.
          #
          #   @return [Array<String>, nil]
          optional :legacy_file_ids, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(digital_file_ids:, external_url: nil, instructions: nil, legacy_file_ids: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DigitalFilesConfig}
          #   for more details.
          #
          #   @param digital_file_ids [Array<String>]
          #
          #   @param external_url [String, nil]
          #
          #   @param instructions [String, nil]
          #
          #   @param legacy_file_ids [Array<String>, nil] Three-way patchable field (mirrors the credit_entitlements pattern):
        end

        class LicenseKeyConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute activation_message
          #
          #   @return [String, nil]
          optional :activation_message, String, nil?: true

          # @!attribute activations_limit
          #
          #   @return [Integer, nil]
          optional :activations_limit, Integer, nil?: true

          # @!attribute duration_count
          #
          #   @return [Integer, nil]
          optional :duration_count, Integer, nil?: true

          # @!attribute duration_interval
          #
          #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
          optional :duration_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

          # @!method initialize(activation_message: nil, activations_limit: nil, duration_count: nil, duration_interval: nil)
          #   @param activation_message [String, nil]
          #   @param activations_limit [Integer, nil]
          #   @param duration_count [Integer, nil]
          #   @param duration_interval [Symbol, Dodopayments::Models::TimeInterval, nil]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::LicenseKeyConfig)]
      end

      # Which platform integration this entitlement uses
      module IntegrationType
        extend Dodopayments::Internal::Type::Enum

        DISCORD = :discord
        TELEGRAM = :telegram
        GITHUB = :github
        FIGMA = :figma
        FRAMER = :framer
        NOTION = :notion
        DIGITAL_FILES = :digital_files
        LICENSE_KEY = :license_key

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

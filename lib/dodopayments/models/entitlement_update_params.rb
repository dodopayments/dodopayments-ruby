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
      #   @return [Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig, nil]
      optional :integration_config,
               union: -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig },
               nil?: true

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
      #   @param integration_config [Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig, nil] Platform-specific configuration for an entitlement.
      #
      #   @param metadata [Hash{Symbol=>String}, nil]
      #
      #   @param name [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Platform-specific configuration for an entitlement. Each variant uses unique
      # field names so `#[serde(untagged)]` can disambiguate correctly.
      module IntegrationConfig
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::GitHubConfig }

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::DiscordConfig }

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::TelegramConfig }

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::FigmaConfig }

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::FramerConfig }

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::NotionConfig }

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig }

        variant -> { Dodopayments::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig }

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
          #   {Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig}
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
        #   @return [Array(Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig)]
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # Platform-specific configuration for an entitlement. Each variant uses unique
    # field names so `#[serde(untagged)]` can disambiguate correctly.
    module IntegrationConfig
      extend Dodopayments::Internal::Type::Union

      variant -> { Dodopayments::IntegrationConfig::GitHubConfig }

      variant -> { Dodopayments::IntegrationConfig::DiscordConfig }

      variant -> { Dodopayments::IntegrationConfig::TelegramConfig }

      variant -> { Dodopayments::IntegrationConfig::FigmaConfig }

      variant -> { Dodopayments::IntegrationConfig::FramerConfig }

      variant -> { Dodopayments::IntegrationConfig::NotionConfig }

      variant -> { Dodopayments::IntegrationConfig::DigitalFilesConfig }

      variant -> { Dodopayments::IntegrationConfig::LicenseKeyConfig }

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
        #   {Dodopayments::Models::IntegrationConfig::DigitalFilesConfig} for more details.
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
      #   @return [Array(Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig)]
    end
  end
end

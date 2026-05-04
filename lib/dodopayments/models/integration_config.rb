# frozen_string_literal: true

module Dodopayments
  module Models
    # Integration-specific configuration supplied when creating or updating an
    # entitlement. The shape required matches the entitlement's `integration_type`.
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
        #   Permission to grant on the repository.
        #
        #   @return [Symbol, Dodopayments::Models::IntegrationConfig::GitHubConfig::Permission]
        required :permission, enum: -> { Dodopayments::IntegrationConfig::GitHubConfig::Permission }

        # @!attribute target_id
        #   Repository or organisation slug to grant access to.
        #
        #   @return [String]
        required :target_id, String

        # @!method initialize(permission:, target_id:)
        #   @param permission [Symbol, Dodopayments::Models::IntegrationConfig::GitHubConfig::Permission] Permission to grant on the repository.
        #
        #   @param target_id [String] Repository or organisation slug to grant access to.

        # Permission to grant on the repository.
        #
        # @see Dodopayments::Models::IntegrationConfig::GitHubConfig#permission
        module Permission
          extend Dodopayments::Internal::Type::Enum

          PULL = :pull
          PUSH = :push
          ADMIN = :admin
          MAINTAIN = :maintain
          TRIAGE = :triage

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class DiscordConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute guild_id
        #   Discord guild (server) ID.
        #
        #   @return [String]
        required :guild_id, String

        # @!attribute role_id
        #   Optional Discord role to assign within the guild.
        #
        #   @return [String, nil]
        optional :role_id, String, nil?: true

        # @!method initialize(guild_id:, role_id: nil)
        #   @param guild_id [String] Discord guild (server) ID.
        #
        #   @param role_id [String, nil] Optional Discord role to assign within the guild.
      end

      class TelegramConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute chat_id
        #   Telegram chat ID. For groups this is typically a negative integer.
        #
        #   @return [String]
        required :chat_id, String

        # @!method initialize(chat_id:)
        #   @param chat_id [String] Telegram chat ID. For groups this is typically a negative integer.
      end

      class FigmaConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute figma_file_id
        #   Figma file identifier to grant access to.
        #
        #   @return [String]
        required :figma_file_id, String

        # @!method initialize(figma_file_id:)
        #   @param figma_file_id [String] Figma file identifier to grant access to.
      end

      class FramerConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute framer_template_id
        #   Framer template identifier to grant access to.
        #
        #   @return [String]
        required :framer_template_id, String

        # @!method initialize(framer_template_id:)
        #   @param framer_template_id [String] Framer template identifier to grant access to.
      end

      class NotionConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute notion_template_id
        #   Notion template identifier to grant access to.
        #
        #   @return [String]
        required :notion_template_id, String

        # @!method initialize(notion_template_id:)
        #   @param notion_template_id [String] Notion template identifier to grant access to.
      end

      class DigitalFilesConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute digital_file_ids
        #   Files attached to this entitlement. Add files via
        #   `POST /entitlements/{id}/files` and remove them via
        #   `DELETE /entitlements/{id}/files/{file_id}`.
        #
        #   @return [Array<String>]
        required :digital_file_ids, Dodopayments::Internal::Type::ArrayOf[String]

        # @!attribute external_url
        #   Optional external URL shown to the customer alongside the files.
        #
        #   @return [String, nil]
        optional :external_url, String, nil?: true

        # @!attribute instructions
        #   Optional human-readable delivery instructions shown to the customer alongside
        #   the files.
        #
        #   @return [String, nil]
        optional :instructions, String, nil?: true

        # @!attribute legacy_file_ids
        #   Three-way patchable list of legacy file identifiers:
        #
        #   - omitted → preserve the current value
        #   - `null` → clear
        #   - `[...]` → replace
        #
        #   On create, an omitted field, an explicit `null`, or an empty array all result in
        #   no legacy files attached.
        #
        #   @return [Array<String>, nil]
        optional :legacy_file_ids, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(digital_file_ids:, external_url: nil, instructions: nil, legacy_file_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::IntegrationConfig::DigitalFilesConfig} for more details.
        #
        #   @param digital_file_ids [Array<String>] Files attached to this entitlement. Add files via
        #
        #   @param external_url [String, nil] Optional external URL shown to the customer alongside the files.
        #
        #   @param instructions [String, nil] Optional human-readable delivery instructions shown to the customer
        #
        #   @param legacy_file_ids [Array<String>, nil] Three-way patchable list of legacy file identifiers:
      end

      class LicenseKeyConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute activation_message
        #   Optional message displayed when a customer activates the license key (≤ 2500
        #   characters).
        #
        #   @return [String, nil]
        optional :activation_message, String, nil?: true

        # @!attribute activations_limit
        #   Maximum activations allowed per issued license key. Omit for unlimited.
        #
        #   @return [Integer, nil]
        optional :activations_limit, Integer, nil?: true

        # @!attribute duration_count
        #   Validity duration of issued license keys. Provide both `duration_count` and
        #   `duration_interval` together for a fixed duration; omit both for non-expiring
        #   keys.
        #
        #   @return [Integer, nil]
        optional :duration_count, Integer, nil?: true

        # @!attribute duration_interval
        #   Unit of `duration_count`.
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
        optional :duration_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

        # @!method initialize(activation_message: nil, activations_limit: nil, duration_count: nil, duration_interval: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::IntegrationConfig::LicenseKeyConfig} for more details.
        #
        #   @param activation_message [String, nil] Optional message displayed when a customer activates the license
        #
        #   @param activations_limit [Integer, nil] Maximum activations allowed per issued license key. Omit for unlimited.
        #
        #   @param duration_count [Integer, nil] Validity duration of issued license keys. Provide both
        #
        #   @param duration_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Unit of `duration_count`.
      end

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::IntegrationConfig::GitHubConfig, Dodopayments::Models::IntegrationConfig::DiscordConfig, Dodopayments::Models::IntegrationConfig::TelegramConfig, Dodopayments::Models::IntegrationConfig::FigmaConfig, Dodopayments::Models::IntegrationConfig::FramerConfig, Dodopayments::Models::IntegrationConfig::NotionConfig, Dodopayments::Models::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::IntegrationConfig::LicenseKeyConfig)]
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # Integration-specific configuration on an entitlement read response.
    #
    # For `digital_files` entitlements the response includes presigned download URLs
    # for each attached file; other integrations match the shape supplied at creation.
    module IntegrationConfigResponse
      extend Dodopayments::Internal::Type::Union

      variant -> { Dodopayments::IntegrationConfigResponse::GitHubConfig }

      variant -> { Dodopayments::IntegrationConfigResponse::DiscordConfig }

      variant -> { Dodopayments::IntegrationConfigResponse::TelegramConfig }

      variant -> { Dodopayments::IntegrationConfigResponse::FigmaConfig }

      variant -> { Dodopayments::IntegrationConfigResponse::FramerConfig }

      variant -> { Dodopayments::IntegrationConfigResponse::NotionConfig }

      variant -> { Dodopayments::IntegrationConfigResponse::DigitalFilesConfig }

      variant -> { Dodopayments::IntegrationConfigResponse::LicenseKeyConfig }

      class GitHubConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute permission
        #   Permission to grant on the repository.
        #
        #   @return [Symbol, Dodopayments::Models::GitHubPermission]
        required :permission, enum: -> { Dodopayments::GitHubPermission }

        # @!attribute target_id
        #   Repository or organisation slug to grant access to.
        #
        #   @return [String]
        required :target_id, String

        # @!method initialize(permission:, target_id:)
        #   @param permission [Symbol, Dodopayments::Models::GitHubPermission] Permission to grant on the repository.
        #
        #   @param target_id [String] Repository or organisation slug to grant access to.
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
        # @!attribute digital_files
        #   Populated digital-files payload with each file's metadata and a short-lived
        #   presigned download URL.
        #
        #   @return [Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles]
        required :digital_files, -> { Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles }

        # @!method initialize(digital_files:)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig} for more
        #   details.
        #
        #   @param digital_files [Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles] Populated digital-files payload with each file's metadata and a

        # @see Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig#digital_files
        class DigitalFiles < Dodopayments::Internal::Type::BaseModel
          # @!attribute files
          #   One entry per attached file.
          #
          #   @return [Array<Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File>]
          required :files,
                   -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File] }

          # @!attribute external_url
          #   Optional external URL, passed through from the entitlement configuration.
          #
          #   @return [String, nil]
          optional :external_url, String, nil?: true

          # @!attribute instructions
          #   Optional human-readable delivery instructions, passed through from the
          #   entitlement configuration.
          #
          #   @return [String, nil]
          optional :instructions, String, nil?: true

          # @!method initialize(files:, external_url: nil, instructions: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles}
          #   for more details.
          #
          #   Populated digital-files payload with each file's metadata and a short-lived
          #   presigned download URL.
          #
          #   @param files [Array<Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File>] One entry per attached file.
          #
          #   @param external_url [String, nil] Optional external URL, passed through from the entitlement
          #
          #   @param instructions [String, nil] Optional human-readable delivery instructions, passed through from

          class File < Dodopayments::Internal::Type::BaseModel
            # @!attribute download_url
            #   Short-lived presigned URL for downloading the file.
            #
            #   @return [String]
            required :download_url, String

            # @!attribute expires_in
            #   Seconds until `download_url` expires.
            #
            #   @return [Integer]
            required :expires_in, Integer

            # @!attribute file_id
            #   Identifier of the attached file.
            #
            #   @return [String]
            required :file_id, String

            # @!attribute filename
            #   Original filename of the attached file.
            #
            #   @return [String]
            required :filename, String

            # @!attribute content_type
            #   Optional content-type declared at upload.
            #
            #   @return [String, nil]
            optional :content_type, String, nil?: true

            # @!attribute file_size
            #   Optional size of the file in bytes.
            #
            #   @return [Integer, nil]
            optional :file_size, Integer, nil?: true

            # @!method initialize(download_url:, expires_in:, file_id:, filename:, content_type: nil, file_size: nil)
            #   One file in a resolved digital-files payload.
            #
            #   @param download_url [String] Short-lived presigned URL for downloading the file.
            #
            #   @param expires_in [Integer] Seconds until `download_url` expires.
            #
            #   @param file_id [String] Identifier of the attached file.
            #
            #   @param filename [String] Original filename of the attached file.
            #
            #   @param content_type [String, nil] Optional content-type declared at upload.
            #
            #   @param file_size [Integer, nil] Optional size of the file in bytes.
          end
        end
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
        #   {Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig} for more
        #   details.
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
      #   @return [Array(Dodopayments::Models::IntegrationConfigResponse::GitHubConfig, Dodopayments::Models::IntegrationConfigResponse::DiscordConfig, Dodopayments::Models::IntegrationConfigResponse::TelegramConfig, Dodopayments::Models::IntegrationConfigResponse::FigmaConfig, Dodopayments::Models::IntegrationConfigResponse::FramerConfig, Dodopayments::Models::IntegrationConfigResponse::NotionConfig, Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig, Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig)]
    end
  end
end

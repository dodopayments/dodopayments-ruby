# frozen_string_literal: true

module Dodopayments
  module Models
    # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
    # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
    # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
    # ID-only via [`IntegrationConfig`]; this enum is response-only.
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
        #
        #   @return [String]
        required :permission, String

        # @!attribute target_id
        #
        #   @return [String]
        required :target_id, String

        # @!method initialize(permission:, target_id:)
        #   @param permission [String]
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
        # @!attribute digital_files
        #   Populated digital-files payload for entitlement read surfaces. Mirrors
        #   `DigitalProductDelivery` but is sourced from an entitlement's
        #   `integration_config` (not a grant) and tags each file with its origin (`legacy`
        #   vs `ee`).
        #
        #   @return [Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles]
        required :digital_files, -> { Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles }

        # @!method initialize(digital_files:)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig} for more
        #   details.
        #
        #   @param digital_files [Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles] Populated digital-files payload for entitlement read surfaces. Mirrors

        # @see Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig#digital_files
        class DigitalFiles < Dodopayments::Internal::Type::BaseModel
          # @!attribute files
          #
          #   @return [Array<Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File>]
          required :files,
                   -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File] }

          # @!attribute external_url
          #
          #   @return [String, nil]
          optional :external_url, String, nil?: true

          # @!attribute instructions
          #
          #   @return [String, nil]
          optional :instructions, String, nil?: true

          # @!method initialize(files:, external_url: nil, instructions: nil)
          #   Populated digital-files payload for entitlement read surfaces. Mirrors
          #   `DigitalProductDelivery` but is sourced from an entitlement's
          #   `integration_config` (not a grant) and tags each file with its origin (`legacy`
          #   vs `ee`).
          #
          #   @param files [Array<Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File>]
          #   @param external_url [String, nil]
          #   @param instructions [String, nil]

          class File < Dodopayments::Internal::Type::BaseModel
            # @!attribute download_url
            #
            #   @return [String]
            required :download_url, String

            # @!attribute expires_in
            #   Seconds until `download_url` expires.
            #
            #   @return [Integer]
            required :expires_in, Integer

            # @!attribute file_id
            #
            #   @return [String]
            required :file_id, String

            # @!attribute filename
            #
            #   @return [String]
            required :filename, String

            # @!attribute source
            #   `"legacy"` for files in `product_files`, `"ee"` for files managed by the
            #   Entitlements Engine.
            #
            #   @return [String]
            required :source, String

            # @!attribute content_type
            #
            #   @return [String, nil]
            optional :content_type, String, nil?: true

            # @!attribute file_size
            #
            #   @return [Integer, nil]
            optional :file_size, Integer, nil?: true

            # @!method initialize(download_url:, expires_in:, file_id:, filename:, source:, content_type: nil, file_size: nil)
            #   Some parameter documentations has been truncated, see
            #   {Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File}
            #   for more details.
            #
            #   @param download_url [String]
            #
            #   @param expires_in [Integer] Seconds until `download_url` expires.
            #
            #   @param file_id [String]
            #
            #   @param filename [String]
            #
            #   @param source [String] `"legacy"` for files in `product_files`, `"ee"` for files managed by the
            #
            #   @param content_type [String, nil]
            #
            #   @param file_size [Integer, nil]
          end
        end
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
      #   @return [Array(Dodopayments::Models::IntegrationConfigResponse::GitHubConfig, Dodopayments::Models::IntegrationConfigResponse::DiscordConfig, Dodopayments::Models::IntegrationConfigResponse::TelegramConfig, Dodopayments::Models::IntegrationConfigResponse::FigmaConfig, Dodopayments::Models::IntegrationConfigResponse::FramerConfig, Dodopayments::Models::IntegrationConfigResponse::NotionConfig, Dodopayments::Models::IntegrationConfigResponse::DigitalFilesConfig, Dodopayments::Models::IntegrationConfigResponse::LicenseKeyConfig)]
    end
  end
end

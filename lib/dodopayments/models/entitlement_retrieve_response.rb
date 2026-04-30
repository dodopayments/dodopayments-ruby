# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Entitlements#retrieve
    class EntitlementRetrieveResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute integration_config
      #   Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
      #   the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
      #   `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
      #   ID-only via [`IntegrationConfig`]; this enum is response-only.
      #
      #   @return [Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::LicenseKeyConfig]
      required :integration_config,
               union: -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig }

      # @!attribute integration_type
      #
      #   @return [Symbol, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType]
      required :integration_type,
               enum: -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType }

      # @!attribute is_active
      #
      #   @return [Boolean]
      required :is_active, Dodopayments::Internal::Type::Boolean

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, Dodopayments::Internal::Type::Unknown

      # @!method initialize(id:, business_id:, created_at:, integration_config:, integration_type:, is_active:, name:, updated_at:, description: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::EntitlementRetrieveResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param business_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param integration_config [Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::LicenseKeyConfig] Public-facing variant of [`IntegrationConfig`]. Mirrors every variant
      #
      #   @param integration_type [Symbol, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType]
      #
      #   @param is_active [Boolean]
      #
      #   @param name [String]
      #
      #   @param updated_at [Time]
      #
      #   @param description [String, nil]
      #
      #   @param metadata [Object]

      # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
      # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
      # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
      # ID-only via [`IntegrationConfig`]; this enum is response-only.
      #
      # @see Dodopayments::Models::EntitlementRetrieveResponse#integration_config
      module IntegrationConfig
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::GitHubConfig }

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DiscordConfig }

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::TelegramConfig }

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FigmaConfig }

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FramerConfig }

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::NotionConfig }

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig }

        variant -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::LicenseKeyConfig }

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
          #   @return [Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles]
          required :digital_files,
                   -> { Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles }

          # @!method initialize(digital_files:)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig}
          #   for more details.
          #
          #   @param digital_files [Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles] Populated digital-files payload for entitlement read surfaces. Mirrors

          # @see Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig#digital_files
          class DigitalFiles < Dodopayments::Internal::Type::BaseModel
            # @!attribute files
            #
            #   @return [Array<Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File>]
            required :files,
                     -> do
                       Dodopayments::Internal::Type::ArrayOf[
                         Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File
                       ]
                     end

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
            #   @param files [Array<Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File>]
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
              #   {Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File}
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
        #   @return [Array(Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::LicenseKeyConfig)]
      end

      # @see Dodopayments::Models::EntitlementRetrieveResponse#integration_type
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

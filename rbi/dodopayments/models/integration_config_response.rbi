# typed: strong

module Dodopayments
  module Models
    # Integration-specific configuration on an entitlement read response.
    #
    # For `digital_files` entitlements the response includes presigned download URLs
    # for each attached file; other integrations match the shape supplied at creation.
    module IntegrationConfigResponse
      extend Dodopayments::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Dodopayments::IntegrationConfigResponse::FeatureFlagConfig,
            Dodopayments::IntegrationConfigResponse::GitHubConfig,
            Dodopayments::IntegrationConfigResponse::DiscordConfig,
            Dodopayments::IntegrationConfigResponse::TelegramConfig,
            Dodopayments::IntegrationConfigResponse::FigmaConfig,
            Dodopayments::IntegrationConfigResponse::FramerConfig,
            Dodopayments::IntegrationConfigResponse::NotionConfig,
            Dodopayments::IntegrationConfigResponse::DigitalFilesConfig,
            Dodopayments::IntegrationConfigResponse::LicenseKeyConfig
          )
        end

      class FeatureFlagConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::FeatureFlagConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Merchant-chosen identifier for the capability this entitlement unlocks.
        sig { returns(String) }
        attr_accessor :feature_id

        # Type of capability conferred. Only `boolean` is supported today.
        sig { returns(Dodopayments::FeatureType::TaggedSymbol) }
        attr_accessor :feature_type

        sig do
          params(
            feature_id: String,
            feature_type: Dodopayments::FeatureType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Merchant-chosen identifier for the capability this entitlement unlocks.
          feature_id:,
          # Type of capability conferred. Only `boolean` is supported today.
          feature_type:
        )
        end

        sig do
          override.returns(
            {
              feature_id: String,
              feature_type: Dodopayments::FeatureType::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end

      class GitHubConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::GitHubConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Permission to grant on the repository.
        sig { returns(Dodopayments::GitHubPermission::TaggedSymbol) }
        attr_accessor :permission

        # Repository or organisation slug to grant access to.
        sig { returns(String) }
        attr_accessor :target_id

        sig do
          params(
            permission: Dodopayments::GitHubPermission::OrSymbol,
            target_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Permission to grant on the repository.
          permission:,
          # Repository or organisation slug to grant access to.
          target_id:
        )
        end

        sig do
          override.returns(
            {
              permission: Dodopayments::GitHubPermission::TaggedSymbol,
              target_id: String
            }
          )
        end
        def to_hash
        end
      end

      class DiscordConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::DiscordConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Discord guild (server) ID.
        sig { returns(String) }
        attr_accessor :guild_id

        # Optional Discord role to assign within the guild.
        sig { returns(T.nilable(String)) }
        attr_accessor :role_id

        sig do
          params(guild_id: String, role_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Discord guild (server) ID.
          guild_id:,
          # Optional Discord role to assign within the guild.
          role_id: nil
        )
        end

        sig do
          override.returns({ guild_id: String, role_id: T.nilable(String) })
        end
        def to_hash
        end
      end

      class TelegramConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::TelegramConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Telegram chat ID. For groups this is typically a negative integer.
        sig { returns(String) }
        attr_accessor :chat_id

        sig { params(chat_id: String).returns(T.attached_class) }
        def self.new(
          # Telegram chat ID. For groups this is typically a negative integer.
          chat_id:
        )
        end

        sig { override.returns({ chat_id: String }) }
        def to_hash
        end
      end

      class FigmaConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::FigmaConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Figma file identifier to grant access to.
        sig { returns(String) }
        attr_accessor :figma_file_id

        sig { params(figma_file_id: String).returns(T.attached_class) }
        def self.new(
          # Figma file identifier to grant access to.
          figma_file_id:
        )
        end

        sig { override.returns({ figma_file_id: String }) }
        def to_hash
        end
      end

      class FramerConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::FramerConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Framer template identifier to grant access to.
        sig { returns(String) }
        attr_accessor :framer_template_id

        sig { params(framer_template_id: String).returns(T.attached_class) }
        def self.new(
          # Framer template identifier to grant access to.
          framer_template_id:
        )
        end

        sig { override.returns({ framer_template_id: String }) }
        def to_hash
        end
      end

      class NotionConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::NotionConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Notion template identifier to grant access to.
        sig { returns(String) }
        attr_accessor :notion_template_id

        sig { params(notion_template_id: String).returns(T.attached_class) }
        def self.new(
          # Notion template identifier to grant access to.
          notion_template_id:
        )
        end

        sig { override.returns({ notion_template_id: String }) }
        def to_hash
        end
      end

      class DigitalFilesConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::DigitalFilesConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Populated digital-files payload with each file's metadata and a short-lived
        # presigned download URL.
        sig do
          returns(
            Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles
          )
        end
        attr_reader :digital_files

        sig do
          params(
            digital_files:
              Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::OrHash
          ).void
        end
        attr_writer :digital_files

        sig do
          params(
            digital_files:
              Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Populated digital-files payload with each file's metadata and a short-lived
          # presigned download URL.
          digital_files:
        )
        end

        sig do
          override.returns(
            {
              digital_files:
                Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles
            }
          )
        end
        def to_hash
        end

        class DigitalFiles < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles,
                Dodopayments::Internal::AnyHash
              )
            end

          # One entry per attached file.
          sig do
            returns(
              T::Array[
                Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File
              ]
            )
          end
          attr_accessor :files

          # Optional external URL, passed through from the entitlement configuration.
          sig { returns(T.nilable(String)) }
          attr_accessor :external_url

          # Optional human-readable delivery instructions, passed through from the
          # entitlement configuration.
          sig { returns(T.nilable(String)) }
          attr_accessor :instructions

          # Populated digital-files payload with each file's metadata and a short-lived
          # presigned download URL.
          sig do
            params(
              files:
                T::Array[
                  Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File::OrHash
                ],
              external_url: T.nilable(String),
              instructions: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # One entry per attached file.
            files:,
            # Optional external URL, passed through from the entitlement configuration.
            external_url: nil,
            # Optional human-readable delivery instructions, passed through from the
            # entitlement configuration.
            instructions: nil
          )
          end

          sig do
            override.returns(
              {
                files:
                  T::Array[
                    Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File
                  ],
                external_url: T.nilable(String),
                instructions: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class File < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::DigitalFiles::File,
                  Dodopayments::Internal::AnyHash
                )
              end

            # Short-lived presigned URL for downloading the file.
            sig { returns(String) }
            attr_accessor :download_url

            # Seconds until `download_url` expires.
            sig { returns(Integer) }
            attr_accessor :expires_in

            # Identifier of the attached file.
            sig { returns(String) }
            attr_accessor :file_id

            # Original filename of the attached file.
            sig { returns(String) }
            attr_accessor :filename

            # Optional content-type declared at upload.
            sig { returns(T.nilable(String)) }
            attr_accessor :content_type

            # Optional size of the file in bytes.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :file_size

            # One file in a resolved digital-files payload.
            sig do
              params(
                download_url: String,
                expires_in: Integer,
                file_id: String,
                filename: String,
                content_type: T.nilable(String),
                file_size: T.nilable(Integer)
              ).returns(T.attached_class)
            end
            def self.new(
              # Short-lived presigned URL for downloading the file.
              download_url:,
              # Seconds until `download_url` expires.
              expires_in:,
              # Identifier of the attached file.
              file_id:,
              # Original filename of the attached file.
              filename:,
              # Optional content-type declared at upload.
              content_type: nil,
              # Optional size of the file in bytes.
              file_size: nil
            )
            end

            sig do
              override.returns(
                {
                  download_url: String,
                  expires_in: Integer,
                  file_id: String,
                  filename: String,
                  content_type: T.nilable(String),
                  file_size: T.nilable(Integer)
                }
              )
            end
            def to_hash
            end
          end
        end
      end

      class LicenseKeyConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfigResponse::LicenseKeyConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Optional message displayed when a customer activates the license key (≤ 2500
        # characters).
        sig { returns(T.nilable(String)) }
        attr_accessor :activation_message

        # Maximum activations allowed per issued license key. Omit for unlimited.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :activations_limit

        # Validity duration of issued license keys. Provide both `duration_count` and
        # `duration_interval` together for a fixed duration; omit both for non-expiring
        # keys.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :duration_count

        # Unit of `duration_count`.
        sig { returns(T.nilable(Dodopayments::TimeInterval::TaggedSymbol)) }
        attr_accessor :duration_interval

        # How license keys are fulfilled. `auto` (default) generates and delivers keys to
        # customers automatically; `manual` creates pending grants that you fulfill with
        # the supplied key via `POST /grants/{grant_id}/license-key`.
        sig do
          returns(
            T.nilable(
              Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
            )
          )
        end
        attr_accessor :fulfillment_mode

        sig do
          params(
            activation_message: T.nilable(String),
            activations_limit: T.nilable(Integer),
            duration_count: T.nilable(Integer),
            duration_interval: T.nilable(Dodopayments::TimeInterval::OrSymbol),
            fulfillment_mode:
              T.nilable(
                Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::FulfillmentMode::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Optional message displayed when a customer activates the license key (≤ 2500
          # characters).
          activation_message: nil,
          # Maximum activations allowed per issued license key. Omit for unlimited.
          activations_limit: nil,
          # Validity duration of issued license keys. Provide both `duration_count` and
          # `duration_interval` together for a fixed duration; omit both for non-expiring
          # keys.
          duration_count: nil,
          # Unit of `duration_count`.
          duration_interval: nil,
          # How license keys are fulfilled. `auto` (default) generates and delivers keys to
          # customers automatically; `manual` creates pending grants that you fulfill with
          # the supplied key via `POST /grants/{grant_id}/license-key`.
          fulfillment_mode: nil
        )
        end

        sig do
          override.returns(
            {
              activation_message: T.nilable(String),
              activations_limit: T.nilable(Integer),
              duration_count: T.nilable(Integer),
              duration_interval:
                T.nilable(Dodopayments::TimeInterval::TaggedSymbol),
              fulfillment_mode:
                T.nilable(
                  Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # How license keys are fulfilled. `auto` (default) generates and delivers keys to
        # customers automatically; `manual` creates pending grants that you fulfill with
        # the supplied key via `POST /grants/{grant_id}/license-key`.
        module FulfillmentMode
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::FulfillmentMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTO =
            T.let(
              :auto,
              Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
            )
          MANUAL =
            T.let(
              :manual,
              Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Dodopayments::IntegrationConfigResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end

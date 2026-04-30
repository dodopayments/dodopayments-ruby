# typed: strong

module Dodopayments
  module Models
    class EntitlementRetrieveResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::EntitlementRetrieveResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
      # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
      # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
      # ID-only via [`IntegrationConfig`]; this enum is response-only.
      sig do
        returns(
          Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::Variants
        )
      end
      attr_accessor :integration_config

      sig do
        returns(
          Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
        )
      end
      attr_accessor :integration_type

      sig { returns(T::Boolean) }
      attr_accessor :is_active

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T.anything)) }
      attr_reader :metadata

      sig { params(metadata: T.anything).void }
      attr_writer :metadata

      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          integration_config:
            T.any(
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::GitHubConfig::OrHash,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DiscordConfig::OrHash,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::TelegramConfig::OrHash,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FigmaConfig::OrHash,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FramerConfig::OrHash,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::NotionConfig::OrHash,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::OrHash,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::LicenseKeyConfig::OrHash
            ),
          integration_type:
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::OrSymbol,
          is_active: T::Boolean,
          name: String,
          updated_at: Time,
          description: T.nilable(String),
          metadata: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        business_id:,
        created_at:,
        # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
        # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
        # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
        # ID-only via [`IntegrationConfig`]; this enum is response-only.
        integration_config:,
        integration_type:,
        is_active:,
        name:,
        updated_at:,
        description: nil,
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_id: String,
            created_at: Time,
            integration_config:
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::Variants,
            integration_type:
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol,
            is_active: T::Boolean,
            name: String,
            updated_at: Time,
            description: T.nilable(String),
            metadata: T.anything
          }
        )
      end
      def to_hash
      end

      # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
      # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
      # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
      # ID-only via [`IntegrationConfig`]; this enum is response-only.
      module IntegrationConfig
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::GitHubConfig,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DiscordConfig,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::TelegramConfig,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FigmaConfig,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FramerConfig,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::NotionConfig,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::LicenseKeyConfig
            )
          end

        class GitHubConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::GitHubConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :permission

          sig { returns(String) }
          attr_accessor :target_id

          sig do
            params(permission: String, target_id: String).returns(
              T.attached_class
            )
          end
          def self.new(permission:, target_id:)
          end

          sig { override.returns({ permission: String, target_id: String }) }
          def to_hash
          end
        end

        class DiscordConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DiscordConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :guild_id

          sig { returns(T.nilable(String)) }
          attr_accessor :role_id

          sig do
            params(guild_id: String, role_id: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(guild_id:, role_id: nil)
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
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::TelegramConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :chat_id

          sig { params(chat_id: String).returns(T.attached_class) }
          def self.new(chat_id:)
          end

          sig { override.returns({ chat_id: String }) }
          def to_hash
          end
        end

        class FigmaConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FigmaConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :figma_file_id

          sig { params(figma_file_id: String).returns(T.attached_class) }
          def self.new(figma_file_id:)
          end

          sig { override.returns({ figma_file_id: String }) }
          def to_hash
          end
        end

        class FramerConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::FramerConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :framer_template_id

          sig { params(framer_template_id: String).returns(T.attached_class) }
          def self.new(framer_template_id:)
          end

          sig { override.returns({ framer_template_id: String }) }
          def to_hash
          end
        end

        class NotionConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::NotionConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :notion_template_id

          sig { params(notion_template_id: String).returns(T.attached_class) }
          def self.new(notion_template_id:)
          end

          sig { override.returns({ notion_template_id: String }) }
          def to_hash
          end
        end

        class DigitalFilesConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          # Populated digital-files payload for entitlement read surfaces. Mirrors
          # `DigitalProductDelivery` but is sourced from an entitlement's
          # `integration_config` (not a grant) and tags each file with its origin (`legacy`
          # vs `ee`).
          sig do
            returns(
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles
            )
          end
          attr_reader :digital_files

          sig do
            params(
              digital_files:
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::OrHash
            ).void
          end
          attr_writer :digital_files

          sig do
            params(
              digital_files:
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Populated digital-files payload for entitlement read surfaces. Mirrors
            # `DigitalProductDelivery` but is sourced from an entitlement's
            # `integration_config` (not a grant) and tags each file with its origin (`legacy`
            # vs `ee`).
            digital_files:
          )
          end

          sig do
            override.returns(
              {
                digital_files:
                  Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles
              }
            )
          end
          def to_hash
          end

          class DigitalFiles < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File
                ]
              )
            end
            attr_accessor :files

            sig { returns(T.nilable(String)) }
            attr_accessor :external_url

            sig { returns(T.nilable(String)) }
            attr_accessor :instructions

            # Populated digital-files payload for entitlement read surfaces. Mirrors
            # `DigitalProductDelivery` but is sourced from an entitlement's
            # `integration_config` (not a grant) and tags each file with its origin (`legacy`
            # vs `ee`).
            sig do
              params(
                files:
                  T::Array[
                    Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File::OrHash
                  ],
                external_url: T.nilable(String),
                instructions: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(files:, external_url: nil, instructions: nil)
            end

            sig do
              override.returns(
                {
                  files:
                    T::Array[
                      Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File
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
                    Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File,
                    Dodopayments::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :download_url

              # Seconds until `download_url` expires.
              sig { returns(Integer) }
              attr_accessor :expires_in

              sig { returns(String) }
              attr_accessor :file_id

              sig { returns(String) }
              attr_accessor :filename

              # `"legacy"` for files in `product_files`, `"ee"` for files managed by the
              # Entitlements Engine.
              sig { returns(String) }
              attr_accessor :source

              sig { returns(T.nilable(String)) }
              attr_accessor :content_type

              sig { returns(T.nilable(Integer)) }
              attr_accessor :file_size

              sig do
                params(
                  download_url: String,
                  expires_in: Integer,
                  file_id: String,
                  filename: String,
                  source: String,
                  content_type: T.nilable(String),
                  file_size: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                download_url:,
                # Seconds until `download_url` expires.
                expires_in:,
                file_id:,
                filename:,
                # `"legacy"` for files in `product_files`, `"ee"` for files managed by the
                # Entitlements Engine.
                source:,
                content_type: nil,
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
                    source: String,
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
                Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::LicenseKeyConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :activation_message

          sig { returns(T.nilable(Integer)) }
          attr_accessor :activations_limit

          sig { returns(T.nilable(Integer)) }
          attr_accessor :duration_count

          sig { returns(T.nilable(Dodopayments::TimeInterval::TaggedSymbol)) }
          attr_accessor :duration_interval

          sig do
            params(
              activation_message: T.nilable(String),
              activations_limit: T.nilable(Integer),
              duration_count: T.nilable(Integer),
              duration_interval: T.nilable(Dodopayments::TimeInterval::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            activation_message: nil,
            activations_limit: nil,
            duration_count: nil,
            duration_interval: nil
          )
          end

          sig do
            override.returns(
              {
                activation_message: T.nilable(String),
                activations_limit: T.nilable(Integer),
                duration_count: T.nilable(Integer),
                duration_interval:
                  T.nilable(Dodopayments::TimeInterval::TaggedSymbol)
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig::Variants
            ]
          )
        end
        def self.variants
        end
      end

      module IntegrationType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISCORD =
          T.let(
            :discord,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )
        TELEGRAM =
          T.let(
            :telegram,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )
        GITHUB =
          T.let(
            :github,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )
        FIGMA =
          T.let(
            :figma,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )
        FRAMER =
          T.let(
            :framer,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )
        NOTION =
          T.let(
            :notion,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )
        DIGITAL_FILES =
          T.let(
            :digital_files,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )
        LICENSE_KEY =
          T.let(
            :license_key,
            Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

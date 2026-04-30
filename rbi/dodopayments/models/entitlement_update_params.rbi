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
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::GitHubConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::DiscordConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::TelegramConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::FigmaConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::FramerConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::NotionConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig
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
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::GitHubConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::DiscordConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::TelegramConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::FigmaConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::FramerConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::NotionConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig::OrHash,
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig::OrHash
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
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::GitHubConfig,
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::DiscordConfig,
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::TelegramConfig,
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::FigmaConfig,
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::FramerConfig,
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::NotionConfig,
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig,
                  Dodopayments::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig
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

      # Platform-specific configuration for an entitlement. Each variant uses unique
      # field names so `#[serde(untagged)]` can disambiguate correctly.
      module IntegrationConfig
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::GitHubConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::DiscordConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::TelegramConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::FigmaConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::FramerConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::NotionConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig,
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig
            )
          end

        class GitHubConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::GitHubConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          # One of: pull, push, admin, maintain, triage
          sig { returns(String) }
          attr_accessor :permission

          sig { returns(String) }
          attr_accessor :target_id

          sig do
            params(permission: String, target_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # One of: pull, push, admin, maintain, triage
            permission:,
            target_id:
          )
          end

          sig { override.returns({ permission: String, target_id: String }) }
          def to_hash
          end
        end

        class DiscordConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::DiscordConfig,
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
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::TelegramConfig,
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
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::FigmaConfig,
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
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::FramerConfig,
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
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::NotionConfig,
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
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :digital_file_ids

          sig { returns(T.nilable(String)) }
          attr_accessor :external_url

          sig { returns(T.nilable(String)) }
          attr_accessor :instructions

          # Three-way patchable field (mirrors the credit_entitlements pattern):
          #
          # - omitted → preserve persisted (`None`)
          # - `null` → clear (`Some(None)`)
          # - `[...]` → replace (`Some(Some(...))`)
          #
          # On Create / storage we collapse "clear" and empty-array to `None` so the
          # persisted JSONB never carries a `null` legacy_file_ids key.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :legacy_file_ids

          sig do
            params(
              digital_file_ids: T::Array[String],
              external_url: T.nilable(String),
              instructions: T.nilable(String),
              legacy_file_ids: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            digital_file_ids:,
            external_url: nil,
            instructions: nil,
            # Three-way patchable field (mirrors the credit_entitlements pattern):
            #
            # - omitted → preserve persisted (`None`)
            # - `null` → clear (`Some(None)`)
            # - `[...]` → replace (`Some(Some(...))`)
            #
            # On Create / storage we collapse "clear" and empty-array to `None` so the
            # persisted JSONB never carries a `null` legacy_file_ids key.
            legacy_file_ids: nil
          )
          end

          sig do
            override.returns(
              {
                digital_file_ids: T::Array[String],
                external_url: T.nilable(String),
                instructions: T.nilable(String),
                legacy_file_ids: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end
        end

        class LicenseKeyConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :activation_message

          sig { returns(T.nilable(Integer)) }
          attr_accessor :activations_limit

          sig { returns(T.nilable(Integer)) }
          attr_accessor :duration_count

          sig { returns(T.nilable(Dodopayments::TimeInterval::OrSymbol)) }
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
                  T.nilable(Dodopayments::TimeInterval::OrSymbol)
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Dodopayments::EntitlementUpdateParams::IntegrationConfig::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end

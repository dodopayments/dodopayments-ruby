# typed: strong

module Dodopayments
  module Models
    # Integration-specific configuration supplied when creating or updating an
    # entitlement. The shape required matches the entitlement's `integration_type`.
    #
    # Untagged enum: variants are matched in order. `FeatureFlag` must precede
    # `LicenseKey`, whose fields are all optional and would otherwise match a
    # `feature_flag` config.
    module IntegrationConfig
      extend Dodopayments::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Dodopayments::IntegrationConfig::FeatureFlagConfig,
            Dodopayments::IntegrationConfig::GitHubConfig,
            Dodopayments::IntegrationConfig::DiscordConfig,
            Dodopayments::IntegrationConfig::TelegramConfig,
            Dodopayments::IntegrationConfig::FigmaConfig,
            Dodopayments::IntegrationConfig::FramerConfig,
            Dodopayments::IntegrationConfig::NotionConfig,
            Dodopayments::IntegrationConfig::DigitalFilesConfig,
            Dodopayments::IntegrationConfig::LicenseKeyConfig
          )
        end

      class FeatureFlagConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfig::FeatureFlagConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Merchant-chosen identifier for the capability this entitlement unlocks. Not
        # unique across entitlements.
        sig { returns(String) }
        attr_accessor :feature_id

        # Type of capability conferred.
        sig { returns(Symbol) }
        attr_accessor :feature_type

        sig do
          params(feature_id: String, feature_type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Merchant-chosen identifier for the capability this entitlement unlocks. Not
          # unique across entitlements.
          feature_id:,
          # Type of capability conferred.
          feature_type: :boolean
        )
        end

        sig { override.returns({ feature_id: String, feature_type: Symbol }) }
        def to_hash
        end
      end

      class GitHubConfig < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::IntegrationConfig::GitHubConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Permission to grant on the repository.
        sig { returns(Dodopayments::GitHubPermission::OrSymbol) }
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
              permission: Dodopayments::GitHubPermission::OrSymbol,
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
              Dodopayments::IntegrationConfig::DiscordConfig,
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
              Dodopayments::IntegrationConfig::TelegramConfig,
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
              Dodopayments::IntegrationConfig::FigmaConfig,
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
              Dodopayments::IntegrationConfig::FramerConfig,
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
              Dodopayments::IntegrationConfig::NotionConfig,
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
              Dodopayments::IntegrationConfig::DigitalFilesConfig,
              Dodopayments::Internal::AnyHash
            )
          end

        # Files attached to this entitlement. Add files via
        # `POST /entitlements/{id}/files` and remove them via
        # `DELETE /entitlements/{id}/files/{file_id}`.
        sig { returns(T::Array[String]) }
        attr_accessor :digital_file_ids

        # Optional external URL shown to the customer alongside the files.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_url

        # Optional human-readable delivery instructions shown to the customer alongside
        # the files.
        sig { returns(T.nilable(String)) }
        attr_accessor :instructions

        # Three-way patchable list of legacy file identifiers:
        #
        # - omitted → preserve the current value
        # - `null` → clear
        # - `[...]` → replace
        #
        # On create, an omitted field, an explicit `null`, or an empty array all result in
        # no legacy files attached.
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
          # Files attached to this entitlement. Add files via
          # `POST /entitlements/{id}/files` and remove them via
          # `DELETE /entitlements/{id}/files/{file_id}`.
          digital_file_ids:,
          # Optional external URL shown to the customer alongside the files.
          external_url: nil,
          # Optional human-readable delivery instructions shown to the customer alongside
          # the files.
          instructions: nil,
          # Three-way patchable list of legacy file identifiers:
          #
          # - omitted → preserve the current value
          # - `null` → clear
          # - `[...]` → replace
          #
          # On create, an omitted field, an explicit `null`, or an empty array all result in
          # no legacy files attached.
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
              Dodopayments::IntegrationConfig::LicenseKeyConfig,
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
        sig { returns(T.nilable(Dodopayments::TimeInterval::OrSymbol)) }
        attr_accessor :duration_interval

        # How license keys are fulfilled. `auto` (default) generates and delivers keys to
        # customers automatically; `manual` creates pending grants that you fulfill with
        # the supplied key via `POST /grants/{grant_id}/license-key`.
        sig do
          returns(
            T.nilable(
              Dodopayments::IntegrationConfig::LicenseKeyConfig::FulfillmentMode::OrSymbol
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
                Dodopayments::IntegrationConfig::LicenseKeyConfig::FulfillmentMode::OrSymbol
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
                T.nilable(Dodopayments::TimeInterval::OrSymbol),
              fulfillment_mode:
                T.nilable(
                  Dodopayments::IntegrationConfig::LicenseKeyConfig::FulfillmentMode::OrSymbol
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
                Dodopayments::IntegrationConfig::LicenseKeyConfig::FulfillmentMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTO =
            T.let(
              :auto,
              Dodopayments::IntegrationConfig::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
            )
          MANUAL =
            T.let(
              :manual,
              Dodopayments::IntegrationConfig::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::IntegrationConfig::LicenseKeyConfig::FulfillmentMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(T::Array[Dodopayments::IntegrationConfig::Variants])
      end
      def self.variants
      end
    end
  end
end

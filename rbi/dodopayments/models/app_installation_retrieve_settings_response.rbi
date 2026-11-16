# typed: strong

module Dodopayments
  module Models
    class AppInstallationRetrieveSettingsResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::AppInstallationRetrieveSettingsResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # `true` when a required field has no value, or a stored value fails a live rule.
      sig { returns(T::Boolean) }
      attr_accessor :action_needed

      sig { returns(String) }
      attr_accessor :app_id

      sig { returns(String) }
      attr_accessor :installation_id

      # The keys that need an action.
      sig { returns(T::Array[String]) }
      attr_accessor :invalid_keys

      # The values of the secret fields of the live manifest, by key.
      sig { returns(T.anything) }
      attr_accessor :secrets

      # The values of the fields of the live manifest that are not secrets.
      sig { returns(T.anything) }
      attr_accessor :values

      # The version of the live settings manifest. It is `null` when the app has no live
      # manifest. Then `values` and `secrets` are empty.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :live_manifest_version

      # The manifest version of the last save. It is `null` when the installation has no
      # settings.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :manifest_version

      # The time of the last save.
      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      # The settings of the App Installation of the app token, with the secret values.
      sig do
        params(
          action_needed: T::Boolean,
          app_id: String,
          installation_id: String,
          invalid_keys: T::Array[String],
          secrets: T.anything,
          values: T.anything,
          live_manifest_version: T.nilable(Integer),
          manifest_version: T.nilable(Integer),
          updated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # `true` when a required field has no value, or a stored value fails a live rule.
        action_needed:,
        app_id:,
        installation_id:,
        # The keys that need an action.
        invalid_keys:,
        # The values of the secret fields of the live manifest, by key.
        secrets:,
        # The values of the fields of the live manifest that are not secrets.
        values:,
        # The version of the live settings manifest. It is `null` when the app has no live
        # manifest. Then `values` and `secrets` are empty.
        live_manifest_version: nil,
        # The manifest version of the last save. It is `null` when the installation has no
        # settings.
        manifest_version: nil,
        # The time of the last save.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            action_needed: T::Boolean,
            app_id: String,
            installation_id: String,
            invalid_keys: T::Array[String],
            secrets: T.anything,
            values: T.anything,
            live_manifest_version: T.nilable(Integer),
            manifest_version: T.nilable(Integer),
            updated_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end

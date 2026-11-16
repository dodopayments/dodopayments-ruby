# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::AppInstallation#retrieve_settings
    class AppInstallationRetrieveSettingsResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute action_needed
      #   `true` when a required field has no value, or a stored value fails a live rule.
      #
      #   @return [Boolean]
      required :action_needed, Dodopayments::Internal::Type::Boolean

      # @!attribute app_id
      #
      #   @return [String]
      required :app_id, String

      # @!attribute installation_id
      #
      #   @return [String]
      required :installation_id, String

      # @!attribute invalid_keys
      #   The keys that need an action.
      #
      #   @return [Array<String>]
      required :invalid_keys, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute secrets
      #   The values of the secret fields of the live manifest, by key.
      #
      #   @return [Object]
      required :secrets, Dodopayments::Internal::Type::Unknown

      # @!attribute values
      #   The values of the fields of the live manifest that are not secrets.
      #
      #   @return [Object]
      required :values, Dodopayments::Internal::Type::Unknown

      # @!attribute live_manifest_version
      #   The version of the live settings manifest. It is `null` when the app has no live
      #   manifest. Then `values` and `secrets` are empty.
      #
      #   @return [Integer, nil]
      optional :live_manifest_version, Integer, nil?: true

      # @!attribute manifest_version
      #   The manifest version of the last save. It is `null` when the installation has no
      #   settings.
      #
      #   @return [Integer, nil]
      optional :manifest_version, Integer, nil?: true

      # @!attribute updated_at
      #   The time of the last save.
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!method initialize(action_needed:, app_id:, installation_id:, invalid_keys:, secrets:, values:, live_manifest_version: nil, manifest_version: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::AppInstallationRetrieveSettingsResponse} for more
      #   details.
      #
      #   The settings of the App Installation of the app token, with the secret values.
      #
      #   @param action_needed [Boolean] `true` when a required field has no value, or a stored value fails a live rule.
      #
      #   @param app_id [String]
      #
      #   @param installation_id [String]
      #
      #   @param invalid_keys [Array<String>] The keys that need an action.
      #
      #   @param secrets [Object] The values of the secret fields of the live manifest, by key.
      #
      #   @param values [Object] The values of the fields of the live manifest that are not secrets.
      #
      #   @param live_manifest_version [Integer, nil] The version of the live settings manifest. It is `null` when the app has no live
      #
      #   @param manifest_version [Integer, nil] The manifest version of the last save. It is `null` when the installation has no
      #
      #   @param updated_at [Time, nil] The time of the last save.
    end
  end
end

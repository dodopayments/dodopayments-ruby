# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::AppInstallationTest < Dodopayments::Test::ResourceTest
  def test_retrieve_settings
    response = @dodo_payments.app_installation.retrieve_settings

    assert_pattern do
      response => Dodopayments::Models::AppInstallationRetrieveSettingsResponse
    end

    assert_pattern do
      response => {
        action_needed: Dodopayments::Internal::Type::Boolean,
        app_id: String,
        installation_id: String,
        invalid_keys: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        secrets: Dodopayments::Internal::Type::Unknown,
        values: Dodopayments::Internal::Type::Unknown,
        live_manifest_version: Integer | nil,
        manifest_version: Integer | nil,
        updated_at: Time | nil
      }
    end
  end
end

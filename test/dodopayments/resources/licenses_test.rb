# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::LicensesTest < Dodopayments::Test::ResourceTest
  def test_activate_required_params
    response = @dodo_payments.licenses.activate(license_key: "license_key", name: "name")

    assert_pattern do
      response => Dodopayments::Models::LicenseKeyInstance
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        license_key_id: String,
        name: String
      }
    end
  end

  def test_deactivate_required_params
    response =
      @dodo_payments.licenses.deactivate(
        license_key: "license_key",
        license_key_instance_id: "license_key_instance_id"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_validate_required_params
    response = @dodo_payments.licenses.validate(license_key: "2b1f8e2d-c41e-4e8f-b2d3-d9fd61c38f43")

    assert_pattern do
      response => Dodopayments::Models::LicenseValidateResponse
    end

    assert_pattern do
      response => {
        valid: Dodopayments::Internal::Type::Boolean
      }
    end
  end
end

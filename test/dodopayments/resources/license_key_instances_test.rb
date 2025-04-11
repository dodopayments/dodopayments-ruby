# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::LicenseKeyInstancesTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.license_key_instances.retrieve("id")

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

  def test_update_required_params
    response = @dodo_payments.license_key_instances.update("id", name: "name")

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

  def test_list
    response = @dodo_payments.license_key_instances.list

    assert_pattern do
      response => ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::LicenseKeyInstanceListResponseItem])
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::LicenseKeysTest < DodoPayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.license_keys.retrieve("id")

    assert_pattern do
      response => DodoPayments::Models::LicenseKey
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        customer_id: String,
        instances_count: Integer,
        key: String,
        payment_id: String,
        product_id: String,
        status: DodoPayments::Models::LicenseKey::Status,
        activations_limit: Integer | nil,
        expires_at: Time | nil,
        subscription_id: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.license_keys.update("id")

    assert_pattern do
      response => DodoPayments::Models::LicenseKey
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        customer_id: String,
        instances_count: Integer,
        key: String,
        payment_id: String,
        product_id: String,
        status: DodoPayments::Models::LicenseKey::Status,
        activations_limit: Integer | nil,
        expires_at: Time | nil,
        subscription_id: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.license_keys.list

    assert_pattern do
      response => ^(DodoPayments::ArrayOf[DodoPayments::Models::LicenseKeyListResponseItem])
    end
  end
end

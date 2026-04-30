# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Entitlements::GrantsTest < Dodopayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.entitlements.grants.list("id")

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Entitlements::EntitlementGrant
    end

    assert_pattern do
      row => {
        id: String,
        business_id: String,
        created_at: Time,
        customer_id: String,
        entitlement_id: String,
        external_id: String,
        status: Dodopayments::Entitlements::EntitlementGrant::Status,
        updated_at: Time,
        delivered_at: Time | nil,
        digital_product_delivery: Dodopayments::DigitalProductDelivery | nil,
        error_code: String | nil,
        error_message: String | nil,
        license_key: Dodopayments::Entitlements::LicenseKeyGrant | nil,
        metadata: Dodopayments::Internal::Type::Unknown | nil,
        oauth_expires_at: Time | nil,
        oauth_url: String | nil,
        payment_id: String | nil,
        revocation_reason: String | nil,
        revoked_at: Time | nil,
        subscription_id: String | nil
      }
    end
  end

  def test_revoke_required_params
    response = @dodo_payments.entitlements.grants.revoke("grant_id", id: "id")

    assert_pattern do
      response => Dodopayments::Entitlements::EntitlementGrant
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        customer_id: String,
        entitlement_id: String,
        external_id: String,
        status: Dodopayments::Entitlements::EntitlementGrant::Status,
        updated_at: Time,
        delivered_at: Time | nil,
        digital_product_delivery: Dodopayments::DigitalProductDelivery | nil,
        error_code: String | nil,
        error_message: String | nil,
        license_key: Dodopayments::Entitlements::LicenseKeyGrant | nil,
        metadata: Dodopayments::Internal::Type::Unknown | nil,
        oauth_expires_at: Time | nil,
        oauth_url: String | nil,
        payment_id: String | nil,
        revocation_reason: String | nil,
        revoked_at: Time | nil,
        subscription_id: String | nil
      }
    end
  end
end

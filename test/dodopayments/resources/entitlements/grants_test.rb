# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Entitlements::GrantsTest < Dodopayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.entitlements.grants.list("ent_jt7jcvI79Xh8eehqgWdcm")

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
        brand_id: String,
        business_id: String,
        created_at: Time,
        customer_id: String,
        entitlement_id: String,
        integration_type: Dodopayments::EntitlementIntegrationType,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        status: Dodopayments::Entitlements::EntitlementGrant::Status,
        updated_at: Time,
        delivered_at: Time | nil,
        digital_product_delivery: Dodopayments::DigitalProductDelivery | nil,
        error_code: String | nil,
        error_message: String | nil,
        license_key: Dodopayments::Entitlements::LicenseKeyGrant | nil,
        oauth_expires_at: Time | nil,
        oauth_url: String | nil,
        payment_id: String | nil,
        revocation_reason: String | nil,
        revoked_at: Time | nil,
        subscription_id: String | nil
      }
    end
  end

  def test_fulfill_license_key_required_params
    response =
      @dodo_payments.entitlements.grants.fulfill_license_key("entg_w0ZCJZgNXuNDdMVzvja6p", key: "key")

    assert_pattern do
      response => Dodopayments::Entitlements::EntitlementGrant
    end

    assert_pattern do
      response => {
        id: String,
        brand_id: String,
        business_id: String,
        created_at: Time,
        customer_id: String,
        entitlement_id: String,
        integration_type: Dodopayments::EntitlementIntegrationType,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        status: Dodopayments::Entitlements::EntitlementGrant::Status,
        updated_at: Time,
        delivered_at: Time | nil,
        digital_product_delivery: Dodopayments::DigitalProductDelivery | nil,
        error_code: String | nil,
        error_message: String | nil,
        license_key: Dodopayments::Entitlements::LicenseKeyGrant | nil,
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
    response =
      @dodo_payments.entitlements.grants.revoke("entg_w0ZCJZgNXuNDdMVzvja6p", id: "ent_jt7jcvI79Xh8eehqgWdcm")

    assert_pattern do
      response => Dodopayments::Entitlements::EntitlementGrant
    end

    assert_pattern do
      response => {
        id: String,
        brand_id: String,
        business_id: String,
        created_at: Time,
        customer_id: String,
        entitlement_id: String,
        integration_type: Dodopayments::EntitlementIntegrationType,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        status: Dodopayments::Entitlements::EntitlementGrant::Status,
        updated_at: Time,
        delivered_at: Time | nil,
        digital_product_delivery: Dodopayments::DigitalProductDelivery | nil,
        error_code: String | nil,
        error_message: String | nil,
        license_key: Dodopayments::Entitlements::LicenseKeyGrant | nil,
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

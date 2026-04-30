# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::EntitlementsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.entitlements.create(
        integration_config: {permission: "permission", target_id: "target_id"},
        integration_type: :discord,
        name: "name"
      )

    assert_pattern do
      response => Dodopayments::Models::EntitlementCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::Models::EntitlementCreateResponse::IntegrationConfig,
        integration_type: Dodopayments::Models::EntitlementCreateResponse::IntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        name: String,
        updated_at: Time,
        description: String | nil,
        metadata: Dodopayments::Internal::Type::Unknown | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.entitlements.retrieve("id")

    assert_pattern do
      response => Dodopayments::Models::EntitlementRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::Models::EntitlementRetrieveResponse::IntegrationConfig,
        integration_type: Dodopayments::Models::EntitlementRetrieveResponse::IntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        name: String,
        updated_at: Time,
        description: String | nil,
        metadata: Dodopayments::Internal::Type::Unknown | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.entitlements.update("id")

    assert_pattern do
      response => Dodopayments::Models::EntitlementUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::Models::EntitlementUpdateResponse::IntegrationConfig,
        integration_type: Dodopayments::Models::EntitlementUpdateResponse::IntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        name: String,
        updated_at: Time,
        description: String | nil,
        metadata: Dodopayments::Internal::Type::Unknown | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.entitlements.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::EntitlementListResponse
    end

    assert_pattern do
      row => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::Models::EntitlementListResponse::IntegrationConfig,
        integration_type: Dodopayments::Models::EntitlementListResponse::IntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        name: String,
        updated_at: Time,
        description: String | nil,
        metadata: Dodopayments::Internal::Type::Unknown | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.entitlements.delete("id")

    assert_pattern do
      response => nil
    end
  end
end

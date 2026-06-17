# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::EntitlementsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.entitlements.create(
        integration_config: {permission: :pull, target_id: "target_id"},
        integration_type: :discord,
        name: "name"
      )

    assert_pattern do
      response => Dodopayments::Entitlement
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::IntegrationConfigResponse,
        integration_type: Dodopayments::EntitlementIntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        name: String,
        updated_at: Time,
        description: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.entitlements.retrieve("ent_jt7jcvI79Xh8eehqgWdcm")

    assert_pattern do
      response => Dodopayments::Entitlement
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::IntegrationConfigResponse,
        integration_type: Dodopayments::EntitlementIntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        name: String,
        updated_at: Time,
        description: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.entitlements.update("ent_jt7jcvI79Xh8eehqgWdcm")

    assert_pattern do
      response => Dodopayments::Entitlement
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::IntegrationConfigResponse,
        integration_type: Dodopayments::EntitlementIntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        name: String,
        updated_at: Time,
        description: String | nil
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
      row => Dodopayments::Entitlement
    end

    assert_pattern do
      row => {
        id: String,
        business_id: String,
        created_at: Time,
        integration_config: Dodopayments::IntegrationConfigResponse,
        integration_type: Dodopayments::EntitlementIntegrationType,
        is_active: Dodopayments::Internal::Type::Boolean,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        name: String,
        updated_at: Time,
        description: String | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.entitlements.delete("ent_jt7jcvI79Xh8eehqgWdcm")

    assert_pattern do
      response => nil
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::CreditEntitlementsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.credit_entitlements.create(
        name: "name",
        overage_enabled: true,
        precision: 0,
        rollover_enabled: true,
        unit: "unit"
      )

    assert_pattern do
      response => Dodopayments::CreditEntitlement
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        name: String,
        overage_behavior: Dodopayments::CbbOverageBehavior,
        overage_enabled: Dodopayments::Internal::Type::Boolean,
        precision: Integer,
        rollover_enabled: Dodopayments::Internal::Type::Boolean,
        unit: String,
        updated_at: Time,
        currency: Dodopayments::Currency | nil,
        description: String | nil,
        expires_after_days: Integer | nil,
        max_rollover_count: Integer | nil,
        overage_limit: Integer | nil,
        price_per_unit: String | nil,
        rollover_percentage: Integer | nil,
        rollover_timeframe_count: Integer | nil,
        rollover_timeframe_interval: Dodopayments::TimeInterval | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.credit_entitlements.retrieve("id")

    assert_pattern do
      response => Dodopayments::CreditEntitlement
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        name: String,
        overage_behavior: Dodopayments::CbbOverageBehavior,
        overage_enabled: Dodopayments::Internal::Type::Boolean,
        precision: Integer,
        rollover_enabled: Dodopayments::Internal::Type::Boolean,
        unit: String,
        updated_at: Time,
        currency: Dodopayments::Currency | nil,
        description: String | nil,
        expires_after_days: Integer | nil,
        max_rollover_count: Integer | nil,
        overage_limit: Integer | nil,
        price_per_unit: String | nil,
        rollover_percentage: Integer | nil,
        rollover_timeframe_count: Integer | nil,
        rollover_timeframe_interval: Dodopayments::TimeInterval | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.credit_entitlements.update("id")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    response = @dodo_payments.credit_entitlements.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::CreditEntitlement
    end

    assert_pattern do
      row => {
        id: String,
        business_id: String,
        created_at: Time,
        name: String,
        overage_behavior: Dodopayments::CbbOverageBehavior,
        overage_enabled: Dodopayments::Internal::Type::Boolean,
        precision: Integer,
        rollover_enabled: Dodopayments::Internal::Type::Boolean,
        unit: String,
        updated_at: Time,
        currency: Dodopayments::Currency | nil,
        description: String | nil,
        expires_after_days: Integer | nil,
        max_rollover_count: Integer | nil,
        overage_limit: Integer | nil,
        price_per_unit: String | nil,
        rollover_percentage: Integer | nil,
        rollover_timeframe_count: Integer | nil,
        rollover_timeframe_interval: Dodopayments::TimeInterval | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.credit_entitlements.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_undelete
    response = @dodo_payments.credit_entitlements.undelete("id")

    assert_pattern do
      response => nil
    end
  end
end

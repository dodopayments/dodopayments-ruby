# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::SubscriptionsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.subscriptions.create(
        billing: {country: :AF},
        customer: {customer_id: "customer_id"},
        product_id: "product_id",
        quantity: 0
      )

    assert_pattern do
      response => Dodopayments::Models::SubscriptionCreateResponse
    end

    assert_pattern do
      response => {
        addons: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::AddonCartResponseItem]),
        customer: Dodopayments::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        payment_id: String,
        recurring_pre_tax_amount: Integer,
        subscription_id: String,
        client_secret: String | nil,
        discount_id: String | nil,
        expires_on: Time | nil,
        payment_link: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.subscriptions.retrieve("subscription_id")

    assert_pattern do
      response => Dodopayments::Subscription
    end

    assert_pattern do
      response => {
        addons: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::AddonCartResponseItem]),
        billing: Dodopayments::BillingAddress,
        cancel_at_next_billing_date: Dodopayments::Internal::Type::Boolean,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer: Dodopayments::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        meters: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Subscription::Meter]),
        next_billing_date: Time,
        on_demand: Dodopayments::Internal::Type::Boolean,
        payment_frequency_count: Integer,
        payment_frequency_interval: Dodopayments::TimeInterval,
        previous_billing_date: Time,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: Dodopayments::SubscriptionStatus,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: Dodopayments::TimeInterval,
        tax_inclusive: Dodopayments::Internal::Type::Boolean,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_cycles_remaining: Integer | nil,
        discount_id: String | nil,
        expires_at: Time | nil,
        payment_method_id: String | nil,
        tax_id: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.subscriptions.update("subscription_id")

    assert_pattern do
      response => Dodopayments::Subscription
    end

    assert_pattern do
      response => {
        addons: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::AddonCartResponseItem]),
        billing: Dodopayments::BillingAddress,
        cancel_at_next_billing_date: Dodopayments::Internal::Type::Boolean,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer: Dodopayments::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        meters: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Subscription::Meter]),
        next_billing_date: Time,
        on_demand: Dodopayments::Internal::Type::Boolean,
        payment_frequency_count: Integer,
        payment_frequency_interval: Dodopayments::TimeInterval,
        previous_billing_date: Time,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: Dodopayments::SubscriptionStatus,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: Dodopayments::TimeInterval,
        tax_inclusive: Dodopayments::Internal::Type::Boolean,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_cycles_remaining: Integer | nil,
        discount_id: String | nil,
        expires_at: Time | nil,
        payment_method_id: String | nil,
        tax_id: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.subscriptions.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::SubscriptionListResponse
    end

    assert_pattern do
      row => {
        billing: Dodopayments::BillingAddress,
        cancel_at_next_billing_date: Dodopayments::Internal::Type::Boolean,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer: Dodopayments::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        next_billing_date: Time,
        on_demand: Dodopayments::Internal::Type::Boolean,
        payment_frequency_count: Integer,
        payment_frequency_interval: Dodopayments::TimeInterval,
        previous_billing_date: Time,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: Dodopayments::SubscriptionStatus,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: Dodopayments::TimeInterval,
        tax_inclusive: Dodopayments::Internal::Type::Boolean,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_cycles_remaining: Integer | nil,
        discount_id: String | nil,
        payment_method_id: String | nil,
        tax_id: String | nil
      }
    end
  end

  def test_change_plan_required_params
    response =
      @dodo_payments.subscriptions.change_plan(
        "subscription_id",
        product_id: "product_id",
        proration_billing_mode: :prorated_immediately,
        quantity: 0
      )

    assert_pattern do
      response => nil
    end
  end

  def test_charge_required_params
    response = @dodo_payments.subscriptions.charge("subscription_id", product_price: 0)

    assert_pattern do
      response => Dodopayments::Models::SubscriptionChargeResponse
    end

    assert_pattern do
      response => {
        payment_id: String
      }
    end
  end

  def test_preview_change_plan_required_params
    response =
      @dodo_payments.subscriptions.preview_change_plan(
        "subscription_id",
        product_id: "product_id",
        proration_billing_mode: :prorated_immediately,
        quantity: 0
      )

    assert_pattern do
      response => Dodopayments::Models::SubscriptionPreviewChangePlanResponse
    end

    assert_pattern do
      response => {
        immediate_charge: Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge,
        new_plan: Dodopayments::Subscription
      }
    end
  end

  def test_retrieve_usage_history
    response = @dodo_payments.subscriptions.retrieve_usage_history("subscription_id")

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse
    end

    assert_pattern do
      row => {
        end_date: Time,
        meters: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter]),
        start_date: Time
      }
    end
  end

  def test_update_payment_method_required_params
    response =
      @dodo_payments.subscriptions.update_payment_method(
        "subscription_id",
        payment_method_id: "payment_method_id",
        type: :existing
      )

    assert_pattern do
      response => Dodopayments::Models::SubscriptionUpdatePaymentMethodResponse
    end

    assert_pattern do
      response => {
        client_secret: String | nil,
        expires_on: Time | nil,
        payment_id: String | nil,
        payment_link: String | nil
      }
    end
  end
end

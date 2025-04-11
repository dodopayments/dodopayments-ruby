# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::SubscriptionsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.subscriptions.create(
        billing: {city: "city", country: :AF, state: "state", street: "street", zipcode: "zipcode"},
        customer: {customer_id: "customer_id"},
        product_id: "product_id",
        quantity: 0
      )

    assert_pattern do
      response => Dodopayments::Models::SubscriptionCreateResponse
    end

    assert_pattern do
      response => {
        customer: Dodopayments::Models::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        recurring_pre_tax_amount: Integer,
        subscription_id: String,
        client_secret: String | nil,
        discount_id: String | nil,
        payment_link: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.subscriptions.retrieve("subscription_id")

    assert_pattern do
      response => Dodopayments::Models::Subscription
    end

    assert_pattern do
      response => {
        billing: Dodopayments::Models::BillingAddress,
        created_at: Time,
        currency: Dodopayments::Models::Subscription::Currency,
        customer: Dodopayments::Models::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        next_billing_date: Time,
        payment_frequency_count: Integer,
        payment_frequency_interval: Dodopayments::Models::TimeInterval,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: Dodopayments::Models::SubscriptionStatus,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: Dodopayments::Models::TimeInterval,
        tax_inclusive: Dodopayments::Internal::Type::Boolean,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_id: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.subscriptions.update("subscription_id")

    assert_pattern do
      response => Dodopayments::Models::Subscription
    end

    assert_pattern do
      response => {
        billing: Dodopayments::Models::BillingAddress,
        created_at: Time,
        currency: Dodopayments::Models::Subscription::Currency,
        customer: Dodopayments::Models::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        next_billing_date: Time,
        payment_frequency_count: Integer,
        payment_frequency_interval: Dodopayments::Models::TimeInterval,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: Dodopayments::Models::SubscriptionStatus,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: Dodopayments::Models::TimeInterval,
        tax_inclusive: Dodopayments::Internal::Type::Boolean,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_id: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.subscriptions.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => Dodopayments::Models::Subscription
    end

    assert_pattern do
      row => {
        billing: Dodopayments::Models::BillingAddress,
        created_at: Time,
        currency: Dodopayments::Models::Subscription::Currency,
        customer: Dodopayments::Models::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        next_billing_date: Time,
        payment_frequency_count: Integer,
        payment_frequency_interval: Dodopayments::Models::TimeInterval,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: Dodopayments::Models::SubscriptionStatus,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: Dodopayments::Models::TimeInterval,
        tax_inclusive: Dodopayments::Internal::Type::Boolean,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_id: String | nil
      }
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
end

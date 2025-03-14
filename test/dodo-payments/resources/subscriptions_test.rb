# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::SubscriptionsTest < DodoPayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.subscriptions.create(
      billing: {city: "city", country: :AF, state: "state", street: "street", zipcode: "zipcode"},
      customer: {customer_id: "customer_id"},
      product_id: "product_id",
      quantity: 0
    )

    assert_pattern do
      response => DodoPayments::Models::SubscriptionCreateResponse
    end

    assert_pattern do
      response => {
        customer: DodoPayments::Models::SubscriptionCreateResponse::Customer,
        metadata: ^(DodoPayments::HashOf[String]),
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
      response => DodoPayments::Models::Subscription
    end

    assert_pattern do
      response => {
        created_at: Time,
        currency: DodoPayments::Models::Subscription::Currency,
        customer: DodoPayments::Models::Subscription::Customer,
        metadata: ^(DodoPayments::HashOf[String]),
        next_billing_date: Time,
        payment_frequency_count: Integer,
        payment_frequency_interval: DodoPayments::Models::Subscription::PaymentFrequencyInterval,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: DodoPayments::Models::Subscription::Status,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: DodoPayments::Models::Subscription::SubscriptionPeriodInterval,
        tax_inclusive: DodoPayments::BooleanModel,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_id: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.subscriptions.update("subscription_id")

    assert_pattern do
      response => DodoPayments::Models::Subscription
    end

    assert_pattern do
      response => {
        created_at: Time,
        currency: DodoPayments::Models::Subscription::Currency,
        customer: DodoPayments::Models::Subscription::Customer,
        metadata: ^(DodoPayments::HashOf[String]),
        next_billing_date: Time,
        payment_frequency_count: Integer,
        payment_frequency_interval: DodoPayments::Models::Subscription::PaymentFrequencyInterval,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: DodoPayments::Models::Subscription::Status,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: DodoPayments::Models::Subscription::SubscriptionPeriodInterval,
        tax_inclusive: DodoPayments::BooleanModel,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_id: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.subscriptions.list

    assert_pattern do
      response => DodoPayments::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => DodoPayments::Models::Subscription
    end

    assert_pattern do
      row => {
        created_at: Time,
        currency: DodoPayments::Models::Subscription::Currency,
        customer: DodoPayments::Models::Subscription::Customer,
        metadata: ^(DodoPayments::HashOf[String]),
        next_billing_date: Time,
        payment_frequency_count: Integer,
        payment_frequency_interval: DodoPayments::Models::Subscription::PaymentFrequencyInterval,
        product_id: String,
        quantity: Integer,
        recurring_pre_tax_amount: Integer,
        status: DodoPayments::Models::Subscription::Status,
        subscription_id: String,
        subscription_period_count: Integer,
        subscription_period_interval: DodoPayments::Models::Subscription::SubscriptionPeriodInterval,
        tax_inclusive: DodoPayments::BooleanModel,
        trial_period_days: Integer,
        cancelled_at: Time | nil,
        discount_id: String | nil
      }
    end
  end
end

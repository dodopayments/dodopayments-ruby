# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Blocklist::CustomersTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.blocklist.customers.create(create_blocked_customer_request: {customer_id: "customer_id"})

    assert_pattern do
      response => Dodopayments::Blocklist::BlockedCustomer
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        customer_email: String,
        customer_id: String,
        customer_name: String,
        identifier: String,
        source: Dodopayments::Blocklist::BlockedCustomerSource,
        blocked_by_email: String | nil,
        cancelled_subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        notes: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Blocklist::Customers::BlockedCustomerNote]) | nil,
        reason: String | nil,
        remaining_subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        subscriptions_swept: Dodopayments::Internal::Type::Boolean | nil,
        unblocked_at: Time | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.blocklist.customers.retrieve("entry_id")

    assert_pattern do
      response => Dodopayments::Blocklist::BlockedCustomer
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        customer_email: String,
        customer_id: String,
        customer_name: String,
        identifier: String,
        source: Dodopayments::Blocklist::BlockedCustomerSource,
        blocked_by_email: String | nil,
        cancelled_subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        notes: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Blocklist::Customers::BlockedCustomerNote]) | nil,
        reason: String | nil,
        remaining_subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        subscriptions_swept: Dodopayments::Internal::Type::Boolean | nil,
        unblocked_at: Time | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.blocklist.customers.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Blocklist::BlockedCustomer
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        customer_email: String,
        customer_id: String,
        customer_name: String,
        identifier: String,
        source: Dodopayments::Blocklist::BlockedCustomerSource,
        blocked_by_email: String | nil,
        cancelled_subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        notes: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Blocklist::Customers::BlockedCustomerNote]) | nil,
        reason: String | nil,
        remaining_subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        subscriptions_swept: Dodopayments::Internal::Type::Boolean | nil,
        unblocked_at: Time | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.blocklist.customers.delete("entry_id")

    assert_pattern do
      response => nil
    end
  end
end

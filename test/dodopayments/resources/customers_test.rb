# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::CustomersTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.customers.create(email: "email", name: "name")

    assert_pattern do
      response => Dodopayments::Customer
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        customer_id: String,
        email: String,
        name: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]) | nil,
        phone_number: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.customers.retrieve("customer_id")

    assert_pattern do
      response => Dodopayments::Customer
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        customer_id: String,
        email: String,
        name: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]) | nil,
        phone_number: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.customers.update("customer_id")

    assert_pattern do
      response => Dodopayments::Customer
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        customer_id: String,
        email: String,
        name: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]) | nil,
        phone_number: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.customers.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Customer
    end

    assert_pattern do
      row => {
        business_id: String,
        created_at: Time,
        customer_id: String,
        email: String,
        name: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]) | nil,
        phone_number: String | nil
      }
    end
  end

  def test_retrieve_payment_methods
    response = @dodo_payments.customers.retrieve_payment_methods("customer_id")

    assert_pattern do
      response => Dodopayments::Models::CustomerRetrievePaymentMethodsResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item])
      }
    end
  end
end

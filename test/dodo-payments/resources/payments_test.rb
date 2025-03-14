# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::PaymentsTest < DodoPayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.payments.create(
      billing: {city: "city", country: :AF, state: "state", street: "street", zipcode: "zipcode"},
      customer: {customer_id: "customer_id"},
      product_cart: [{product_id: "product_id", quantity: 0}]
    )

    assert_pattern do
      response => DodoPayments::Models::PaymentCreateResponse
    end

    assert_pattern do
      response => {
        client_secret: String,
        customer: DodoPayments::Models::PaymentCreateResponse::Customer,
        metadata: ^(DodoPayments::HashOf[String]),
        payment_id: String,
        total_amount: Integer,
        discount_id: String | nil,
        payment_link: String | nil,
        product_cart: ^(DodoPayments::ArrayOf[DodoPayments::Models::PaymentCreateResponse::ProductCart]) | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.payments.retrieve("payment_id")

    assert_pattern do
      response => DodoPayments::Models::Payment
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        currency: DodoPayments::Models::Payment::Currency,
        customer: DodoPayments::Models::Payment::Customer,
        disputes: ^(DodoPayments::ArrayOf[DodoPayments::Models::Dispute]),
        metadata: ^(DodoPayments::HashOf[String]),
        payment_id: String,
        refunds: ^(DodoPayments::ArrayOf[DodoPayments::Models::Refund]),
        total_amount: Integer,
        discount_id: String | nil,
        error_message: String | nil,
        payment_link: String | nil,
        payment_method: String | nil,
        payment_method_type: String | nil,
        product_cart: ^(DodoPayments::ArrayOf[DodoPayments::Models::Payment::ProductCart]) | nil,
        status: DodoPayments::Models::Payment::Status | nil,
        subscription_id: String | nil,
        tax: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.payments.list

    assert_pattern do
      response => DodoPayments::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => DodoPayments::Models::PaymentListResponse
    end

    assert_pattern do
      row => {
        created_at: Time,
        currency: DodoPayments::Models::PaymentListResponse::Currency,
        customer: DodoPayments::Models::PaymentListResponse::Customer,
        metadata: ^(DodoPayments::HashOf[String]),
        payment_id: String,
        total_amount: Integer,
        payment_method: String | nil,
        payment_method_type: String | nil,
        status: DodoPayments::Models::PaymentListResponse::Status | nil,
        subscription_id: String | nil
      }
    end
  end
end

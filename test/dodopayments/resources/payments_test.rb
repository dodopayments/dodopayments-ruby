# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::PaymentsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.payments.create(
        billing: {city: "city", country: :AF, state: "state", street: "street", zipcode: "zipcode"},
        customer: {customer_id: "customer_id"},
        product_cart: [{product_id: "product_id", quantity: 0}]
      )

    assert_pattern do
      response => Dodopayments::Models::PaymentCreateResponse
    end

    assert_pattern do
      response => {
        client_secret: String,
        customer: Dodopayments::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        payment_id: String,
        total_amount: Integer,
        discount_id: String | nil,
        payment_link: String | nil,
        product_cart: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::OneTimeProductCartItem]) | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.payments.retrieve("payment_id")

    assert_pattern do
      response => Dodopayments::Payment
    end

    assert_pattern do
      response => {
        billing: Dodopayments::BillingAddress,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer: Dodopayments::CustomerLimitedDetails,
        disputes: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Dispute]),
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        payment_id: String,
        refunds: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Refund]),
        settlement_amount: Integer,
        settlement_currency: Dodopayments::Currency,
        total_amount: Integer,
        card_issuing_country: Dodopayments::CountryCode | nil,
        card_last_four: String | nil,
        card_network: String | nil,
        card_type: String | nil,
        discount_id: String | nil,
        error_message: String | nil,
        payment_link: String | nil,
        payment_method: String | nil,
        payment_method_type: String | nil,
        product_cart: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Payment::ProductCart]) | nil,
        settlement_tax: Integer | nil,
        status: Dodopayments::IntentStatus | nil,
        subscription_id: String | nil,
        tax: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.payments.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::PaymentListResponse
    end

    assert_pattern do
      row => {
        created_at: Time,
        currency: Dodopayments::Currency,
        customer: Dodopayments::CustomerLimitedDetails,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        payment_id: String,
        total_amount: Integer,
        payment_method: String | nil,
        payment_method_type: String | nil,
        status: Dodopayments::IntentStatus | nil,
        subscription_id: String | nil
      }
    end
  end
end

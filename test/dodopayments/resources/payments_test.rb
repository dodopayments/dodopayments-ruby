# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::PaymentsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.payments.create(
        billing: {country: :AF},
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
        expires_on: Time | nil,
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
        brand_id: String,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer: Dodopayments::CustomerLimitedDetails,
        digital_products_delivered: Dodopayments::Internal::Type::Boolean,
        disputes: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Dispute]),
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        payment_id: String,
        refunds: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Payment::Refund]),
        settlement_amount: Integer,
        settlement_currency: Dodopayments::Currency,
        total_amount: Integer,
        card_holder_name: String | nil,
        card_issuing_country: Dodopayments::CountryCode | nil,
        card_last_four: String | nil,
        card_network: String | nil,
        card_type: String | nil,
        checkout_session_id: String | nil,
        custom_field_responses: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Payment::CustomFieldResponse]) | nil,
        discount_id: String | nil,
        error_code: String | nil,
        error_message: String | nil,
        invoice_id: String | nil,
        invoice_url: String | nil,
        payment_link: String | nil,
        payment_method: String | nil,
        payment_method_type: String | nil,
        product_cart: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Payment::ProductCart]) | nil,
        refund_status: Dodopayments::Payment::RefundStatus | nil,
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
        brand_id: String,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer: Dodopayments::CustomerLimitedDetails,
        digital_products_delivered: Dodopayments::Internal::Type::Boolean,
        has_license_key: Dodopayments::Internal::Type::Boolean,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        payment_id: String,
        total_amount: Integer,
        invoice_id: String | nil,
        invoice_url: String | nil,
        payment_method: String | nil,
        payment_method_type: String | nil,
        status: Dodopayments::IntentStatus | nil,
        subscription_id: String | nil
      }
    end
  end

  def test_retrieve_line_items
    response = @dodo_payments.payments.retrieve_line_items("payment_id")

    assert_pattern do
      response => Dodopayments::Models::PaymentRetrieveLineItemsResponse
    end

    assert_pattern do
      response => {
        currency: Dodopayments::Currency,
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item])
      }
    end
  end
end

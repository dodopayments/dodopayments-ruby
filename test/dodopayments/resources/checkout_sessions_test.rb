# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::CheckoutSessionsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.checkout_sessions.create(product_cart: [{product_id: "product_id", quantity: 0}])

    assert_pattern do
      response => Dodopayments::CheckoutSessionResponse
    end

    assert_pattern do
      response => {
        session_id: String,
        checkout_url: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.checkout_sessions.retrieve("id")

    assert_pattern do
      response => Dodopayments::CheckoutSessionStatus
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        customer_email: String | nil,
        customer_name: String | nil,
        payment_id: String | nil,
        payment_status: Dodopayments::IntentStatus | nil
      }
    end
  end

  def test_preview_required_params
    response =
      @dodo_payments.checkout_sessions.preview(product_cart: [{product_id: "product_id", quantity: 0}])

    assert_pattern do
      response => Dodopayments::Models::CheckoutSessionPreviewResponse
    end

    assert_pattern do
      response => {
        billing_country: Dodopayments::CountryCode,
        currency: Dodopayments::Currency,
        current_breakup: Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup,
        product_cart: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart]),
        total_price: Integer,
        recurring_breakup: Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup | nil,
        tax_id_err_msg: String | nil,
        total_tax: Integer | nil
      }
    end
  end
end

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
        checkout_url: String,
        session_id: String
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
end

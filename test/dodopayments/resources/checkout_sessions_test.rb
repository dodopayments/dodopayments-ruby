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
end

# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Customers::CustomerPortalTest < Dodopayments::Test::ResourceTest
  def test_create
    response = @dodo_payments.customers.customer_portal.create("cus_TV52uJWWXt2yIoBBxpjaa")

    assert_pattern do
      response => Dodopayments::CustomerPortalSession
    end

    assert_pattern do
      response => {
        link: String
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../../../test_helper"

class DodoPayments::Test::Resources::Customers::CustomerPortal::SessionTest < DodoPayments::Test::ResourceTest
  def test_create
    response = @dodo_payments.customers.customer_portal.session.create("customer_id")

    assert_pattern do
      response => nil
    end
  end
end

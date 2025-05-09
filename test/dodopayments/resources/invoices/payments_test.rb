# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Invoices::PaymentsTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    skip("skipped: test server currently has no support for method content-type")

    response = @dodo_payments.invoices.payments.retrieve("payment_id")

    assert_pattern do
      response => StringIO
    end
  end
end

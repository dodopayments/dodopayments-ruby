# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Invoices::PaymentsTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    skip("Mock server doesn't support application/pdf responses")

    response = @dodo_payments.invoices.payments.retrieve("payment_id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_retrieve_refund
    skip("Mock server doesn't support application/pdf responses")

    response = @dodo_payments.invoices.payments.retrieve_refund("refund_id")

    assert_pattern do
      response => StringIO
    end
  end
end

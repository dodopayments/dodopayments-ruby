# frozen_string_literal: true

require_relative "../../test_helper"

class DodoPayments::Test::Resources::Invoices::PaymentsTest < DodoPayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.invoices.payments.retrieve("payment_id")

    assert_pattern do
      response => nil
    end
  end
end

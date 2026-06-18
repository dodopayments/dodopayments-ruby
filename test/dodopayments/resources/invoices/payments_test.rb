# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Invoices::PaymentsTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.invoices.payments.retrieve("pay_gr4RizvMOXFJ6xca3y2tU")

    assert_pattern do
      response => StringIO
    end
  end

  def test_retrieve_payout
    response = @dodo_payments.invoices.payments.retrieve_payout("pyt_zFTrrn4sk3x3y2vjDBW3T")

    assert_pattern do
      response => StringIO
    end
  end

  def test_retrieve_refund
    response = @dodo_payments.invoices.payments.retrieve_refund("ref_F0gZetLvTxxBrMU2CZcmy")

    assert_pattern do
      response => StringIO
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::RefundsTest < DodoPayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.refunds.create(payment_id: "payment_id")

    assert_pattern do
      response => DodoPayments::Models::Refund
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        payment_id: String,
        refund_id: String,
        status: DodoPayments::Models::Refund::Status,
        amount: Integer | nil,
        currency: DodoPayments::Models::Refund::Currency | nil,
        reason: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.refunds.retrieve("refund_id")

    assert_pattern do
      response => DodoPayments::Models::Refund
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        payment_id: String,
        refund_id: String,
        status: DodoPayments::Models::Refund::Status,
        amount: Integer | nil,
        currency: DodoPayments::Models::Refund::Currency | nil,
        reason: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.refunds.list

    assert_pattern do
      response => DodoPayments::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => DodoPayments::Models::Refund
    end

    assert_pattern do
      row => {
        business_id: String,
        created_at: Time,
        payment_id: String,
        refund_id: String,
        status: DodoPayments::Models::Refund::Status,
        amount: Integer | nil,
        currency: DodoPayments::Models::Refund::Currency | nil,
        reason: String | nil
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::RefundsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.refunds.create(payment_id: "payment_id")

    assert_pattern do
      response => Dodopayments::Refund
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        is_partial: Dodopayments::Internal::Type::Boolean,
        payment_id: String,
        refund_id: String,
        status: Dodopayments::RefundStatus,
        amount: Integer | nil,
        currency: Dodopayments::Currency | nil,
        reason: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.refunds.retrieve("refund_id")

    assert_pattern do
      response => Dodopayments::Refund
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        is_partial: Dodopayments::Internal::Type::Boolean,
        payment_id: String,
        refund_id: String,
        status: Dodopayments::RefundStatus,
        amount: Integer | nil,
        currency: Dodopayments::Currency | nil,
        reason: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.refunds.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Refund
    end

    assert_pattern do
      row => {
        business_id: String,
        created_at: Time,
        is_partial: Dodopayments::Internal::Type::Boolean,
        payment_id: String,
        refund_id: String,
        status: Dodopayments::RefundStatus,
        amount: Integer | nil,
        currency: Dodopayments::Currency | nil,
        reason: String | nil
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::PayoutsTest < Dodopayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.payouts.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::PayoutListResponse
    end

    assert_pattern do
      row => {
        amount: Integer,
        business_id: String,
        chargebacks: Integer,
        created_at: Time,
        currency: Dodopayments::Models::Currency,
        fee: Integer,
        payment_method: String,
        payout_id: String,
        refunds: Integer,
        status: Dodopayments::Models::PayoutListResponse::Status,
        tax: Integer,
        updated_at: Time,
        name: String | nil,
        payout_document_url: String | nil,
        remarks: String | nil
      }
    end
  end
end

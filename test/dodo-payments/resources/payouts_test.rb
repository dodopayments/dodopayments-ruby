# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::PayoutsTest < DodoPayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.payouts.list

    assert_pattern do
      response => DodoPayments::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => DodoPayments::Models::PayoutListResponse
    end

    assert_pattern do
      row => {
        amount: Integer,
        business_id: String,
        chargebacks: Integer,
        created_at: Time,
        currency: DodoPayments::Models::PayoutListResponse::Currency,
        fee: Integer,
        payment_method: String,
        payout_id: String,
        refunds: Integer,
        status: DodoPayments::Models::PayoutListResponse::Status,
        tax: Integer,
        updated_at: Time,
        name: String | nil,
        payout_document_url: String | nil,
        remarks: String | nil
      }
    end
  end
end

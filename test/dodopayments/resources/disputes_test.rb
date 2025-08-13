# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::DisputesTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.disputes.retrieve("dispute_id")

    assert_pattern do
      response => Dodopayments::GetDispute
    end

    assert_pattern do
      response => {
        amount: String,
        business_id: String,
        created_at: Time,
        currency: String,
        customer: Dodopayments::CustomerLimitedDetails,
        dispute_id: String,
        dispute_stage: Dodopayments::DisputeStage,
        dispute_status: Dodopayments::DisputeStatus,
        payment_id: String,
        reason: String | nil,
        remarks: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.disputes.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::DisputeListResponse
    end

    assert_pattern do
      row => {
        amount: String,
        business_id: String,
        created_at: Time,
        currency: String,
        dispute_id: String,
        dispute_stage: Dodopayments::DisputeStage,
        dispute_status: Dodopayments::DisputeStatus,
        payment_id: String
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::DisputesTest < DodoPayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.disputes.retrieve("dispute_id")

    assert_pattern do
      response => DodoPayments::Models::Dispute
    end

    assert_pattern do
      response => {
        amount: String,
        business_id: String,
        created_at: Time,
        currency: String,
        dispute_id: String,
        dispute_stage: DodoPayments::Models::Dispute::DisputeStage,
        dispute_status: DodoPayments::Models::Dispute::DisputeStatus,
        payment_id: String
      }
    end
  end

  def test_list
    response = @dodo_payments.disputes.list

    assert_pattern do
      response => DodoPayments::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => DodoPayments::Models::Dispute
    end

    assert_pattern do
      row => {
        amount: String,
        business_id: String,
        created_at: Time,
        currency: String,
        dispute_id: String,
        dispute_stage: DodoPayments::Models::Dispute::DisputeStage,
        dispute_status: DodoPayments::Models::Dispute::DisputeStatus,
        payment_id: String
      }
    end
  end
end

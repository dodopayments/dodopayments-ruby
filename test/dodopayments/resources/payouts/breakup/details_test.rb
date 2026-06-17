# frozen_string_literal: true

require_relative "../../../test_helper"

class Dodopayments::Test::Resources::Payouts::Breakup::DetailsTest < Dodopayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.payouts.breakup.details.list("pyt_zFTrrn4sk3x3y2vjDBW3T")

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::Payouts::Breakup::DetailListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        event_type: String,
        original_amount: Integer,
        original_currency: String,
        payout_currency_amount: Integer,
        usd_equivalent_amount: Integer,
        description: String | nil,
        reference_object_id: String | nil
      }
    end
  end

  def test_download_csv
    response = @dodo_payments.payouts.breakup.details.download_csv("pyt_zFTrrn4sk3x3y2vjDBW3T")

    assert_pattern do
      response => nil
    end
  end
end

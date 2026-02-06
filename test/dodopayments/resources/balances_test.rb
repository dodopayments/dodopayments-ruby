# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::BalancesTest < Dodopayments::Test::ResourceTest
  def test_retrieve_ledger
    response = @dodo_payments.balances.retrieve_ledger

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::BalanceLedgerEntry
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Currency,
        event_type: Dodopayments::BalanceLedgerEntry::EventType,
        is_credit: Dodopayments::Internal::Type::Boolean,
        usd_equivalent_amount: Integer,
        after_balance: Integer | nil,
        before_balance: Integer | nil,
        description: String | nil,
        reference_object_id: String | nil
      }
    end
  end
end

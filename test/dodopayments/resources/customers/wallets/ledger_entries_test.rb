# frozen_string_literal: true

require_relative "../../../test_helper"

class Dodopayments::Test::Resources::Customers::Wallets::LedgerEntriesTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.customers.wallets.ledger_entries.create(
        "customer_id",
        amount: 0,
        currency: :AED,
        entry_type: :credit
      )

    assert_pattern do
      response => Dodopayments::Customers::CustomerWallet
    end

    assert_pattern do
      response => {
        balance: Integer,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer_id: String,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @dodo_payments.customers.wallets.ledger_entries.list("customer_id")

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Customers::Wallets::CustomerWalletTransaction
    end

    assert_pattern do
      row => {
        id: String,
        after_balance: Integer,
        amount: Integer,
        before_balance: Integer,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Currency,
        customer_id: String,
        event_type: Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType,
        is_credit: Dodopayments::Internal::Type::Boolean,
        reason: String | nil,
        reference_object_id: String | nil
      }
    end
  end
end

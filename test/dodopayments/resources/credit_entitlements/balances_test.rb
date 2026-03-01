# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::CreditEntitlements::BalancesTest < Dodopayments::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @dodo_payments.credit_entitlements.balances.retrieve(
        "customer_id",
        credit_entitlement_id: "credit_entitlement_id"
      )

    assert_pattern do
      response => Dodopayments::CreditEntitlements::CustomerCreditBalance
    end

    assert_pattern do
      response => {
        id: String,
        balance: String,
        created_at: Time,
        credit_entitlement_id: String,
        customer_id: String,
        overage: String,
        updated_at: Time,
        last_transaction_at: Time | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.credit_entitlements.balances.list("credit_entitlement_id")

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::CreditEntitlements::CustomerCreditBalance
    end

    assert_pattern do
      row => {
        id: String,
        balance: String,
        created_at: Time,
        credit_entitlement_id: String,
        customer_id: String,
        overage: String,
        updated_at: Time,
        last_transaction_at: Time | nil
      }
    end
  end

  def test_create_ledger_entry_required_params
    response =
      @dodo_payments.credit_entitlements.balances.create_ledger_entry(
        "customer_id",
        credit_entitlement_id: "credit_entitlement_id",
        amount: "amount",
        entry_type: :credit
      )

    assert_pattern do
      response => Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: String,
        balance_after: String,
        balance_before: String,
        created_at: Time,
        credit_entitlement_id: String,
        customer_id: String,
        entry_type: Dodopayments::CreditEntitlements::LedgerEntryType,
        is_credit: Dodopayments::Internal::Type::Boolean,
        overage_after: String,
        overage_before: String,
        grant_id: String | nil,
        reason: String | nil
      }
    end
  end

  def test_list_grants_required_params
    response =
      @dodo_payments.credit_entitlements.balances.list_grants(
        "customer_id",
        credit_entitlement_id: "credit_entitlement_id"
      )

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        credit_entitlement_id: String,
        customer_id: String,
        initial_amount: String,
        is_expired: Dodopayments::Internal::Type::Boolean,
        is_rolled_over: Dodopayments::Internal::Type::Boolean,
        remaining_amount: String,
        rollover_count: Integer,
        source_type: Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType,
        updated_at: Time,
        expires_at: Time | nil,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]) | nil,
        parent_grant_id: String | nil,
        source_id: String | nil
      }
    end
  end

  def test_list_ledger_required_params
    response =
      @dodo_payments.credit_entitlements.balances.list_ledger(
        "customer_id",
        credit_entitlement_id: "credit_entitlement_id"
      )

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::CreditEntitlements::CreditLedgerEntry
    end

    assert_pattern do
      row => {
        id: String,
        amount: String,
        balance_after: String,
        balance_before: String,
        business_id: String,
        created_at: Time,
        credit_entitlement_id: String,
        customer_id: String,
        is_credit: Dodopayments::Internal::Type::Boolean,
        overage_after: String,
        overage_before: String,
        transaction_type: Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType,
        description: String | nil,
        grant_id: String | nil,
        reference_id: String | nil,
        reference_type: String | nil
      }
    end
  end
end

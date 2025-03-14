# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::DiscountsTest < DodoPayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.discounts.create(amount: 0, type: :percentage)

    assert_pattern do
      response => DodoPayments::Models::Discount
    end

    assert_pattern do
      response => {
        amount: Integer,
        business_id: String,
        code: String,
        created_at: Time,
        discount_id: String,
        restricted_to: ^(DodoPayments::ArrayOf[String]),
        times_used: Integer,
        type: DodoPayments::Models::Discount::Type,
        expires_at: Time | nil,
        name: String | nil,
        usage_limit: Integer | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.discounts.retrieve("discount_id")

    assert_pattern do
      response => DodoPayments::Models::Discount
    end

    assert_pattern do
      response => {
        amount: Integer,
        business_id: String,
        code: String,
        created_at: Time,
        discount_id: String,
        restricted_to: ^(DodoPayments::ArrayOf[String]),
        times_used: Integer,
        type: DodoPayments::Models::Discount::Type,
        expires_at: Time | nil,
        name: String | nil,
        usage_limit: Integer | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.discounts.update("discount_id")

    assert_pattern do
      response => DodoPayments::Models::Discount
    end

    assert_pattern do
      response => {
        amount: Integer,
        business_id: String,
        code: String,
        created_at: Time,
        discount_id: String,
        restricted_to: ^(DodoPayments::ArrayOf[String]),
        times_used: Integer,
        type: DodoPayments::Models::Discount::Type,
        expires_at: Time | nil,
        name: String | nil,
        usage_limit: Integer | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.discounts.list

    assert_pattern do
      response => DodoPayments::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => DodoPayments::Models::Discount
    end

    assert_pattern do
      row => {
        amount: Integer,
        business_id: String,
        code: String,
        created_at: Time,
        discount_id: String,
        restricted_to: ^(DodoPayments::ArrayOf[String]),
        times_used: Integer,
        type: DodoPayments::Models::Discount::Type,
        expires_at: Time | nil,
        name: String | nil,
        usage_limit: Integer | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.discounts.delete("discount_id")

    assert_pattern do
      response => nil
    end
  end
end

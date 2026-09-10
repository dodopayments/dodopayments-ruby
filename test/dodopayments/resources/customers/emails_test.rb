# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Customers::EmailsTest < Dodopayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.customers.emails.list("customer_id")

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Customers::EmailLogItem
    end

    assert_pattern do
      row => {
        category: String,
        created_at: Time,
        email_log_id: String,
        email_type: String,
        has_preview: Dodopayments::Internal::Type::Boolean,
        policies: Dodopayments::Customers::EmailPolicies,
        status: Dodopayments::Customers::EmailLogStatus,
        failure_code: Dodopayments::Customers::EmailFailureCode | nil,
        failure_reason: String | nil,
        from: String | nil,
        intended_recipient: String | nil,
        recipient: String | nil,
        subject: String | nil
      }
    end
  end

  def test_retrieve_body_required_params
    response = @dodo_payments.customers.emails.retrieve_body("email_log_id", customer_id: "customer_id")

    assert_pattern do
      response => Dodopayments::Customers::EmailBody
    end

    assert_pattern do
      response => {
        merchant_authored: Dodopayments::Internal::Type::Boolean,
        failure_code: Dodopayments::Customers::EmailFailureCode | nil,
        failure_reason: String | nil,
        html: String | nil,
        text: String | nil
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::WebhookEventsTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.webhook_events.retrieve("webhook_event_id")

    assert_pattern do
      response => Dodopayments::Models::WebhookEvent
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        event_id: String,
        event_type: String,
        object_id_: String,
        latest_attempted_at: Time | nil,
        request: String | nil,
        response: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.webhook_events.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::WebhookEvent
    end

    assert_pattern do
      row => {
        business_id: String,
        created_at: Time,
        event_id: String,
        event_type: String,
        object_id_: String,
        latest_attempted_at: Time | nil,
        request: String | nil,
        response: String | nil
      }
    end
  end
end

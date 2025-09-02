# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::UsageEventsTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.usage_events.retrieve("event_id")

    assert_pattern do
      response => Dodopayments::Event
    end

    assert_pattern do
      response => {
        business_id: String,
        customer_id: String,
        event_id: String,
        event_name: String,
        timestamp: Time,
        metadata: ^(Dodopayments::Internal::Type::HashOf[union: Dodopayments::Event::Metadata]) | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.usage_events.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Event
    end

    assert_pattern do
      row => {
        business_id: String,
        customer_id: String,
        event_id: String,
        event_name: String,
        timestamp: Time,
        metadata: ^(Dodopayments::Internal::Type::HashOf[union: Dodopayments::Event::Metadata]) | nil
      }
    end
  end

  def test_ingest_required_params
    response =
      @dodo_payments.usage_events.ingest(
        events: [{customer_id: "customer_id", event_id: "event_id", event_name: "event_name"}]
      )

    assert_pattern do
      response => Dodopayments::Models::UsageEventIngestResponse
    end

    assert_pattern do
      response => {
        ingested_count: Integer
      }
    end
  end
end

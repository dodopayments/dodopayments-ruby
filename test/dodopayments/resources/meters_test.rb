# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::MetersTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.meters.create(
        aggregation: {type: :count},
        event_name: "event_name",
        measurement_unit: "measurement_unit",
        name: "name"
      )

    assert_pattern do
      response => Dodopayments::Meter
    end

    assert_pattern do
      response => {
        id: String,
        aggregation: Dodopayments::MeterAggregation,
        business_id: String,
        created_at: Time,
        event_name: String,
        measurement_unit: String,
        name: String,
        updated_at: Time,
        description: String | nil,
        filter: Dodopayments::MeterFilter | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.meters.retrieve("id")

    assert_pattern do
      response => Dodopayments::Meter
    end

    assert_pattern do
      response => {
        id: String,
        aggregation: Dodopayments::MeterAggregation,
        business_id: String,
        created_at: Time,
        event_name: String,
        measurement_unit: String,
        name: String,
        updated_at: Time,
        description: String | nil,
        filter: Dodopayments::MeterFilter | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.meters.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Meter
    end

    assert_pattern do
      row => {
        id: String,
        aggregation: Dodopayments::MeterAggregation,
        business_id: String,
        created_at: Time,
        event_name: String,
        measurement_unit: String,
        name: String,
        updated_at: Time,
        description: String | nil,
        filter: Dodopayments::MeterFilter | nil
      }
    end
  end

  def test_archive
    response = @dodo_payments.meters.archive("id")

    assert_pattern do
      response => nil
    end
  end

  def test_unarchive
    response = @dodo_payments.meters.unarchive("id")

    assert_pattern do
      response => nil
    end
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::WebhooksTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.webhooks.create(url: "url")

    assert_pattern do
      response => Dodopayments::WebhookDetails
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        description: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        updated_at: String,
        url: String,
        disabled: Dodopayments::Internal::Type::Boolean | nil,
        filter_types: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        rate_limit: Integer | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.webhooks.retrieve("webhook_id")

    assert_pattern do
      response => Dodopayments::WebhookDetails
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        description: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        updated_at: String,
        url: String,
        disabled: Dodopayments::Internal::Type::Boolean | nil,
        filter_types: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        rate_limit: Integer | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.webhooks.update("webhook_id")

    assert_pattern do
      response => Dodopayments::WebhookDetails
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        description: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        updated_at: String,
        url: String,
        disabled: Dodopayments::Internal::Type::Boolean | nil,
        filter_types: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        rate_limit: Integer | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.webhooks.list

    assert_pattern do
      response => Dodopayments::Internal::CursorPagePagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::WebhookDetails
    end

    assert_pattern do
      row => {
        id: String,
        created_at: String,
        description: String,
        metadata: ^(Dodopayments::Internal::Type::HashOf[String]),
        updated_at: String,
        url: String,
        disabled: Dodopayments::Internal::Type::Boolean | nil,
        filter_types: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        rate_limit: Integer | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.webhooks.delete("webhook_id")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_secret
    response = @dodo_payments.webhooks.retrieve_secret("webhook_id")

    assert_pattern do
      response => Dodopayments::Models::WebhookRetrieveSecretResponse
    end

    assert_pattern do
      response => {
        secret: String
      }
    end
  end
end

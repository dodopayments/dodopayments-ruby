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

  def test_unwrap
    key = "whsec_c2VjcmV0Cg=="

    webhook = StandardWebhooks::Webhook.new(key)

    data =
      "{\"business_id\":\"business_id\",\"data\":{\"id\":\"id\",\"amount\":\"amount\",\"balance_after\":\"balance_after\",\"balance_before\":\"balance_before\",\"business_id\":\"business_id\",\"created_at\":\"2019-12-27T18:11:19.117Z\",\"credit_entitlement_id\":\"credit_entitlement_id\",\"customer_id\":\"customer_id\",\"is_credit\":true,\"overage_after\":\"overage_after\",\"overage_before\":\"overage_before\",\"transaction_type\":\"credit_added\",\"description\":\"description\",\"grant_id\":\"grant_id\",\"reference_id\":\"reference_id\",\"reference_type\":\"reference_type\"},\"timestamp\":\"2019-12-27T18:11:19.117Z\",\"type\":\"credit.added\"}"
    message_id = "1"
    timestamp = Time.now.to_i.to_s
    signature = webhook.sign(message_id, timestamp, data)
    headers =
      {"webhook-id" => message_id, "webhook-timestamp" => timestamp, "webhook-signature" => signature}

    @dodo_payments.webhooks.unwrap(data, headers: headers, key: key)

    bad_headers = [
      headers.merge("webhook-id" => "bad"),
      headers.merge("webhook-timestamp" => "0"),
      headers.merge("webhook-signature" => webhook.sign(message_id, timestamp, "xxx"))
    ]
    bad_headers.each do |bad_header|
      assert_raises(StandardWebhooks::WebhookVerificationError) do
        @dodo_payments.webhooks.unwrap(data, headers: bad_header, key: key)
      end
    end
  end
end

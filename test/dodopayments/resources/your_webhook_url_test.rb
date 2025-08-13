# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::YourWebhookURLTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.your_webhook_url.create(
        business_id: "business_id",
        data: {
          billing: {city: "city", country: :AF, state: "state", street: "street", zipcode: "zipcode"},
          brand_id: "brand_id",
          business_id: "business_id",
          created_at: "2019-12-27T18:11:19.117Z",
          currency: :AED,
          customer: {customer_id: "customer_id", email: "email", name: "name"},
          digital_products_delivered: true,
          disputes: [
            {
              amount: "amount",
              business_id: "business_id",
              created_at: "2019-12-27T18:11:19.117Z",
              currency: "currency",
              dispute_id: "dispute_id",
              dispute_stage: :pre_dispute,
              dispute_status: :dispute_opened,
              payment_id: "payment_id"
            }
          ],
          metadata: {foo: "string"},
          payment_id: "payment_id",
          refunds: [
            {
              business_id: "business_id",
              created_at: "2019-12-27T18:11:19.117Z",
              is_partial: true,
              payment_id: "payment_id",
              refund_id: "refund_id",
              status: :succeeded
            }
          ],
          settlement_amount: 0,
          settlement_currency: :AED,
          total_amount: 0,
          payload_type: :Payment
        },
        timestamp: "2019-12-27T18:11:19.117Z",
        type: :"payment.succeeded",
        webhook_id: "webhook-id",
        webhook_signature: "webhook-signature",
        webhook_timestamp: "webhook-timestamp"
      )

    assert_pattern do
      response => nil
    end
  end
end

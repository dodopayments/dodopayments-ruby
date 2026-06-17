# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Webhooks::HeadersTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.webhooks.headers.retrieve("whk_YdWqVEGKmSYKbsIyDxEab")

    assert_pattern do
      response => Dodopayments::Models::Webhooks::HeaderRetrieveResponse
    end

    assert_pattern do
      response => {
        headers: ^(Dodopayments::Internal::Type::HashOf[String]),
        sensitive: ^(Dodopayments::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_update_required_params
    response = @dodo_payments.webhooks.headers.update("whk_YdWqVEGKmSYKbsIyDxEab", headers: {foo: "string"})

    assert_pattern do
      response => nil
    end
  end
end

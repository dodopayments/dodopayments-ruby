# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::ModerationTest < Dodopayments::Test::ResourceTest
  def test_retrieve_usage
    response = @dodo_payments.moderation.retrieve_usage

    assert_pattern do
      response => Dodopayments::Models::ModerationRetrieveUsageResponse
    end

    assert_pattern do
      response => {
        daily: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ModerationRetrieveUsageResponse::Daily]),
        screens_to_next_block: Integer,
        unbilled_screens: Integer
      }
    end
  end

  def test_screen
    response = @dodo_payments.moderation.screen

    assert_pattern do
      response => Dodopayments::Models::ModerationScreenResponse
    end

    assert_pattern do
      response => {
        categories: Dodopayments::ModerationCategoryScores,
        compound_triggered: Dodopayments::Internal::Type::Boolean,
        decision: Dodopayments::ModerationDecision,
        latency_ms: Integer,
        normalized_applied: Dodopayments::Internal::Type::Boolean,
        notes: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        passes: Integer,
        provenance: Dodopayments::ModerationCategoryProvenance,
        request_id: String | nil,
        triggered: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::ModerationCategory])
      }
    end
  end
end

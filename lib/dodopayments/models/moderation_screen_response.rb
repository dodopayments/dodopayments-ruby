# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Moderation#screen
    class ModerationScreenResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute categories
      #   The probability, from 0 to 1, that the screen falls in each category.
      #
      #   @return [Dodopayments::Models::ModerationCategoryScores]
      required :categories, -> { Dodopayments::ModerationCategoryScores }

      # @!attribute compound_triggered
      #   True when real-person likeness and sexual content together crossed their
      #   combined threshold, the pattern of a sexual deepfake.
      #
      #   @return [Boolean]
      required :compound_triggered, Dodopayments::Internal::Type::Boolean

      # @!attribute decision
      #   The verdict. `allow` means the content passed. `deny` means block the content.
      #   `flag` means apply your own judgement. It is not a soft deny.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationDecision]
      required :decision, enum: -> { Dodopayments::ModerationDecision }

      # @!attribute latency_ms
      #   The time the screen took, in milliseconds.
      #
      #   @return [Integer]
      required :latency_ms, Integer

      # @!attribute normalized_applied
      #   True when the text was also screened in a normalized form, with obfuscation such
      #   as invisible or look-alike characters removed.
      #
      #   @return [Boolean]
      required :normalized_applied, Dodopayments::Internal::Type::Boolean

      # @!attribute notes
      #   Human-readable reasons for the decision. The wording can change, so do not parse
      #   it.
      #
      #   @return [Array<String>]
      required :notes, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute passes
      #   The number of yes/no questions the model answered for this screen.
      #
      #   @return [Integer]
      required :passes, Integer

      # @!attribute provenance
      #   How each score in `categories` was measured.
      #
      #   @return [Dodopayments::Models::ModerationCategoryProvenance]
      required :provenance, -> { Dodopayments::ModerationCategoryProvenance }

      # @!attribute request_id
      #   The `request_id` you sent, or null.
      #
      #   @return [String, nil]
      required :request_id, String, nil?: true

      # @!attribute triggered
      #   The categories whose score crossed the threshold of the category. It can be
      #   empty on a `flag` from the general check. `notes` then gives the reason.
      #
      #   @return [Array<Symbol, Dodopayments::Models::ModerationCategory>]
      required :triggered, -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::ModerationCategory] }

      # @!method initialize(categories:, compound_triggered:, decision:, latency_ms:, normalized_applied:, notes:, passes:, provenance:, request_id:, triggered:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ModerationScreenResponse} for more details.
      #
      #   The verdict of one screen.
      #
      #   @param categories [Dodopayments::Models::ModerationCategoryScores] The probability, from 0 to 1, that the screen falls in each category.
      #
      #   @param compound_triggered [Boolean] True when real-person likeness and sexual content together crossed their combine
      #
      #   @param decision [Symbol, Dodopayments::Models::ModerationDecision] The verdict. `allow` means the content passed. `deny` means block the content. `
      #
      #   @param latency_ms [Integer] The time the screen took, in milliseconds.
      #
      #   @param normalized_applied [Boolean] True when the text was also screened in a normalized form, with obfuscation such
      #
      #   @param notes [Array<String>] Human-readable reasons for the decision. The wording can change, so do not parse
      #
      #   @param passes [Integer] The number of yes/no questions the model answered for this screen.
      #
      #   @param provenance [Dodopayments::Models::ModerationCategoryProvenance] How each score in `categories` was measured.
      #
      #   @param request_id [String, nil] The `request_id` you sent, or null.
      #
      #   @param triggered [Array<Symbol, Dodopayments::Models::ModerationCategory>] The categories whose score crossed the threshold of the category. It can be empt
    end
  end
end

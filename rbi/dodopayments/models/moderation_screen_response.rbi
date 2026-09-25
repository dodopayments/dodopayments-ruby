# typed: strong

module Dodopayments
  module Models
    class ModerationScreenResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ModerationScreenResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # The probability, from 0 to 1, that the screen falls in each category.
      sig { returns(Dodopayments::ModerationCategoryScores) }
      attr_reader :categories

      sig do
        params(categories: Dodopayments::ModerationCategoryScores::OrHash).void
      end
      attr_writer :categories

      # True when real-person likeness and sexual content together crossed their
      # combined threshold, the pattern of a sexual deepfake.
      sig { returns(T::Boolean) }
      attr_accessor :compound_triggered

      # The verdict. `allow` means the content passed. `deny` means block the content.
      # `flag` means apply your own judgement. It is not a soft deny.
      sig { returns(Dodopayments::ModerationDecision::TaggedSymbol) }
      attr_accessor :decision

      # The time the screen took, in milliseconds.
      sig { returns(Integer) }
      attr_accessor :latency_ms

      # True when the text was also screened in a normalized form, with obfuscation such
      # as invisible or look-alike characters removed.
      sig { returns(T::Boolean) }
      attr_accessor :normalized_applied

      # Human-readable reasons for the decision. The wording can change, so do not parse
      # it.
      sig { returns(T::Array[String]) }
      attr_accessor :notes

      # The number of yes/no questions the model answered for this screen.
      sig { returns(Integer) }
      attr_accessor :passes

      # How each score in `categories` was measured.
      sig { returns(Dodopayments::ModerationCategoryProvenance) }
      attr_reader :provenance

      sig do
        params(
          provenance: Dodopayments::ModerationCategoryProvenance::OrHash
        ).void
      end
      attr_writer :provenance

      # The `request_id` you sent, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :request_id

      # The categories whose score crossed the threshold of the category. It can be
      # empty on a `flag` from the general check. `notes` then gives the reason.
      sig { returns(T::Array[Dodopayments::ModerationCategory::TaggedSymbol]) }
      attr_accessor :triggered

      # The verdict of one screen.
      sig do
        params(
          categories: Dodopayments::ModerationCategoryScores::OrHash,
          compound_triggered: T::Boolean,
          decision: Dodopayments::ModerationDecision::OrSymbol,
          latency_ms: Integer,
          normalized_applied: T::Boolean,
          notes: T::Array[String],
          passes: Integer,
          provenance: Dodopayments::ModerationCategoryProvenance::OrHash,
          request_id: T.nilable(String),
          triggered: T::Array[Dodopayments::ModerationCategory::OrSymbol]
        ).returns(T.attached_class)
      end
      def self.new(
        # The probability, from 0 to 1, that the screen falls in each category.
        categories:,
        # True when real-person likeness and sexual content together crossed their
        # combined threshold, the pattern of a sexual deepfake.
        compound_triggered:,
        # The verdict. `allow` means the content passed. `deny` means block the content.
        # `flag` means apply your own judgement. It is not a soft deny.
        decision:,
        # The time the screen took, in milliseconds.
        latency_ms:,
        # True when the text was also screened in a normalized form, with obfuscation such
        # as invisible or look-alike characters removed.
        normalized_applied:,
        # Human-readable reasons for the decision. The wording can change, so do not parse
        # it.
        notes:,
        # The number of yes/no questions the model answered for this screen.
        passes:,
        # How each score in `categories` was measured.
        provenance:,
        # The `request_id` you sent, or null.
        request_id:,
        # The categories whose score crossed the threshold of the category. It can be
        # empty on a `flag` from the general check. `notes` then gives the reason.
        triggered:
      )
      end

      sig do
        override.returns(
          {
            categories: Dodopayments::ModerationCategoryScores,
            compound_triggered: T::Boolean,
            decision: Dodopayments::ModerationDecision::TaggedSymbol,
            latency_ms: Integer,
            normalized_applied: T::Boolean,
            notes: T::Array[String],
            passes: Integer,
            provenance: Dodopayments::ModerationCategoryProvenance,
            request_id: T.nilable(String),
            triggered: T::Array[Dodopayments::ModerationCategory::TaggedSymbol]
          }
        )
      end
      def to_hash
      end
    end
  end
end

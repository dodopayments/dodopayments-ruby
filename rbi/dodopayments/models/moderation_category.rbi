# typed: strong

module Dodopayments
  module Models
    # A moderation category.
    module ModerationCategory
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::ModerationCategory) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VIOLENT_CRIMES =
        T.let(:violent_crimes, Dodopayments::ModerationCategory::TaggedSymbol)
      SEX_RELATED_CRIMES =
        T.let(
          :sex_related_crimes,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      CHILD_SEXUAL_EXPLOITATION =
        T.let(
          :child_sexual_exploitation,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      SUICIDE_AND_SELF_HARM =
        T.let(
          :suicide_and_self_harm,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      INDISCRIMINATE_WEAPONS =
        T.let(
          :indiscriminate_weapons,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      INTELLECTUAL_PROPERTY =
        T.let(
          :intellectual_property,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      DEFAMATION =
        T.let(:defamation, Dodopayments::ModerationCategory::TaggedSymbol)
      NON_VIOLENT_CRIMES =
        T.let(
          :non_violent_crimes,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      HATE = T.let(:hate, Dodopayments::ModerationCategory::TaggedSymbol)
      PRIVACY = T.let(:privacy, Dodopayments::ModerationCategory::TaggedSymbol)
      SPECIALIZED_ADVICE =
        T.let(
          :specialized_advice,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      SEXUAL_CONTENT =
        T.let(:sexual_content, Dodopayments::ModerationCategory::TaggedSymbol)
      NON_CONSENSUAL_INTIMATE_IMAGERY =
        T.let(
          :non_consensual_intimate_imagery,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      MINOR_CODED_LANGUAGE =
        T.let(
          :minor_coded_language,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      REAL_PERSON_LIKENESS =
        T.let(
          :real_person_likeness,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      LIVING_ARTIST_STYLE =
        T.let(
          :living_artist_style,
          Dodopayments::ModerationCategory::TaggedSymbol
        )
      PROMPT_INJECTION =
        T.let(:prompt_injection, Dodopayments::ModerationCategory::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::ModerationCategory::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

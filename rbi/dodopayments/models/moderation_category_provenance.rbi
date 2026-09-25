# typed: strong

module Dodopayments
  module Models
    class ModerationCategoryProvenance < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ModerationCategoryProvenance,
            Dodopayments::Internal::AnyHash
          )
        end

      # Child sexual exploitation.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :child_sexual_exploitation

      # False depiction that is likely to injure the reputation of a real person.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :defamation

      # Demeaning people because of a protected characteristic.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :hate

      # Chemical, biological, radiological, nuclear or explosive weapons.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :indiscriminate_weapons

      # Copyright or trademark infringement.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :intellectual_property

      # Imitation of the signature style of a specific living artist.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :living_artist_style

      # Age-coded language that suggests the subject is a minor.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :minor_coded_language

      # Non-consensual intimate imagery: undressing, nudifying or sexualising a real
      # person.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :non_consensual_intimate_imagery

      # Non-violent crimes.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :non_violent_crimes

      # Sensitive private information about a person.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :privacy

      # An attempt to override or manipulate the instructions of the system.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :prompt_injection

      # The likeness of a real, identifiable, named person.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :real_person_likeness

      # Sex-related crimes.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :sex_related_crimes

      # Sexually explicit or pornographic content.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :sexual_content

      # Unqualified financial, medical, legal or electoral advice.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :specialized_advice

      # Suicide and self-harm.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :suicide_and_self_harm

      # Violent crimes.
      sig { returns(Dodopayments::ModerationProvenance::TaggedSymbol) }
      attr_accessor :violent_crimes

      # How each score in `categories` was measured.
      sig do
        params(
          child_sexual_exploitation:
            Dodopayments::ModerationProvenance::OrSymbol,
          defamation: Dodopayments::ModerationProvenance::OrSymbol,
          hate: Dodopayments::ModerationProvenance::OrSymbol,
          indiscriminate_weapons: Dodopayments::ModerationProvenance::OrSymbol,
          intellectual_property: Dodopayments::ModerationProvenance::OrSymbol,
          living_artist_style: Dodopayments::ModerationProvenance::OrSymbol,
          minor_coded_language: Dodopayments::ModerationProvenance::OrSymbol,
          non_consensual_intimate_imagery:
            Dodopayments::ModerationProvenance::OrSymbol,
          non_violent_crimes: Dodopayments::ModerationProvenance::OrSymbol,
          privacy: Dodopayments::ModerationProvenance::OrSymbol,
          prompt_injection: Dodopayments::ModerationProvenance::OrSymbol,
          real_person_likeness: Dodopayments::ModerationProvenance::OrSymbol,
          sex_related_crimes: Dodopayments::ModerationProvenance::OrSymbol,
          sexual_content: Dodopayments::ModerationProvenance::OrSymbol,
          specialized_advice: Dodopayments::ModerationProvenance::OrSymbol,
          suicide_and_self_harm: Dodopayments::ModerationProvenance::OrSymbol,
          violent_crimes: Dodopayments::ModerationProvenance::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Child sexual exploitation.
        child_sexual_exploitation:,
        # False depiction that is likely to injure the reputation of a real person.
        defamation:,
        # Demeaning people because of a protected characteristic.
        hate:,
        # Chemical, biological, radiological, nuclear or explosive weapons.
        indiscriminate_weapons:,
        # Copyright or trademark infringement.
        intellectual_property:,
        # Imitation of the signature style of a specific living artist.
        living_artist_style:,
        # Age-coded language that suggests the subject is a minor.
        minor_coded_language:,
        # Non-consensual intimate imagery: undressing, nudifying or sexualising a real
        # person.
        non_consensual_intimate_imagery:,
        # Non-violent crimes.
        non_violent_crimes:,
        # Sensitive private information about a person.
        privacy:,
        # An attempt to override or manipulate the instructions of the system.
        prompt_injection:,
        # The likeness of a real, identifiable, named person.
        real_person_likeness:,
        # Sex-related crimes.
        sex_related_crimes:,
        # Sexually explicit or pornographic content.
        sexual_content:,
        # Unqualified financial, medical, legal or electoral advice.
        specialized_advice:,
        # Suicide and self-harm.
        suicide_and_self_harm:,
        # Violent crimes.
        violent_crimes:
      )
      end

      sig do
        override.returns(
          {
            child_sexual_exploitation:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            defamation: Dodopayments::ModerationProvenance::TaggedSymbol,
            hate: Dodopayments::ModerationProvenance::TaggedSymbol,
            indiscriminate_weapons:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            intellectual_property:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            living_artist_style:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            minor_coded_language:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            non_consensual_intimate_imagery:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            non_violent_crimes:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            privacy: Dodopayments::ModerationProvenance::TaggedSymbol,
            prompt_injection: Dodopayments::ModerationProvenance::TaggedSymbol,
            real_person_likeness:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            sex_related_crimes:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            sexual_content: Dodopayments::ModerationProvenance::TaggedSymbol,
            specialized_advice:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            suicide_and_self_harm:
              Dodopayments::ModerationProvenance::TaggedSymbol,
            violent_crimes: Dodopayments::ModerationProvenance::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end

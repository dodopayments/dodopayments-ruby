# typed: strong

module Dodopayments
  module Models
    class ModerationCategoryScores < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ModerationCategoryScores,
            Dodopayments::Internal::AnyHash
          )
        end

      # Child sexual exploitation.
      sig { returns(Float) }
      attr_accessor :child_sexual_exploitation

      # False depiction that is likely to injure the reputation of a real person.
      sig { returns(Float) }
      attr_accessor :defamation

      # Demeaning people because of a protected characteristic.
      sig { returns(Float) }
      attr_accessor :hate

      # Chemical, biological, radiological, nuclear or explosive weapons.
      sig { returns(Float) }
      attr_accessor :indiscriminate_weapons

      # Copyright or trademark infringement.
      sig { returns(Float) }
      attr_accessor :intellectual_property

      # Imitation of the signature style of a specific living artist.
      sig { returns(Float) }
      attr_accessor :living_artist_style

      # Age-coded language that suggests the subject is a minor.
      sig { returns(Float) }
      attr_accessor :minor_coded_language

      # Non-consensual intimate imagery: undressing, nudifying or sexualising a real
      # person.
      sig { returns(Float) }
      attr_accessor :non_consensual_intimate_imagery

      # Non-violent crimes.
      sig { returns(Float) }
      attr_accessor :non_violent_crimes

      # Sensitive private information about a person.
      sig { returns(Float) }
      attr_accessor :privacy

      # An attempt to override or manipulate the instructions of the system.
      sig { returns(Float) }
      attr_accessor :prompt_injection

      # The likeness of a real, identifiable, named person.
      sig { returns(Float) }
      attr_accessor :real_person_likeness

      # Sex-related crimes.
      sig { returns(Float) }
      attr_accessor :sex_related_crimes

      # Sexually explicit or pornographic content.
      sig { returns(Float) }
      attr_accessor :sexual_content

      # Unqualified financial, medical, legal or electoral advice.
      sig { returns(Float) }
      attr_accessor :specialized_advice

      # Suicide and self-harm.
      sig { returns(Float) }
      attr_accessor :suicide_and_self_harm

      # Violent crimes.
      sig { returns(Float) }
      attr_accessor :violent_crimes

      # The probability, from 0 to 1, that the screen falls in each category.
      sig do
        params(
          child_sexual_exploitation: Float,
          defamation: Float,
          hate: Float,
          indiscriminate_weapons: Float,
          intellectual_property: Float,
          living_artist_style: Float,
          minor_coded_language: Float,
          non_consensual_intimate_imagery: Float,
          non_violent_crimes: Float,
          privacy: Float,
          prompt_injection: Float,
          real_person_likeness: Float,
          sex_related_crimes: Float,
          sexual_content: Float,
          specialized_advice: Float,
          suicide_and_self_harm: Float,
          violent_crimes: Float
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
            child_sexual_exploitation: Float,
            defamation: Float,
            hate: Float,
            indiscriminate_weapons: Float,
            intellectual_property: Float,
            living_artist_style: Float,
            minor_coded_language: Float,
            non_consensual_intimate_imagery: Float,
            non_violent_crimes: Float,
            privacy: Float,
            prompt_injection: Float,
            real_person_likeness: Float,
            sex_related_crimes: Float,
            sexual_content: Float,
            specialized_advice: Float,
            suicide_and_self_harm: Float,
            violent_crimes: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end

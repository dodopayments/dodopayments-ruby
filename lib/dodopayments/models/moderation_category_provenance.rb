# frozen_string_literal: true

module Dodopayments
  module Models
    class ModerationCategoryProvenance < Dodopayments::Internal::Type::BaseModel
      # @!attribute child_sexual_exploitation
      #   Child sexual exploitation.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :child_sexual_exploitation, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute defamation
      #   False depiction that is likely to injure the reputation of a real person.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :defamation, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute hate
      #   Demeaning people because of a protected characteristic.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :hate, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute indiscriminate_weapons
      #   Chemical, biological, radiological, nuclear or explosive weapons.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :indiscriminate_weapons, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute intellectual_property
      #   Copyright or trademark infringement.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :intellectual_property, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute living_artist_style
      #   Imitation of the signature style of a specific living artist.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :living_artist_style, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute minor_coded_language
      #   Age-coded language that suggests the subject is a minor.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :minor_coded_language, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute non_consensual_intimate_imagery
      #   Non-consensual intimate imagery: undressing, nudifying or sexualising a real
      #   person.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :non_consensual_intimate_imagery, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute non_violent_crimes
      #   Non-violent crimes.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :non_violent_crimes, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute privacy
      #   Sensitive private information about a person.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :privacy, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute prompt_injection
      #   An attempt to override or manipulate the instructions of the system.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :prompt_injection, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute real_person_likeness
      #   The likeness of a real, identifiable, named person.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :real_person_likeness, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute sex_related_crimes
      #   Sex-related crimes.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :sex_related_crimes, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute sexual_content
      #   Sexually explicit or pornographic content.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :sexual_content, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute specialized_advice
      #   Unqualified financial, medical, legal or electoral advice.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :specialized_advice, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute suicide_and_self_harm
      #   Suicide and self-harm.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :suicide_and_self_harm, enum: -> { Dodopayments::ModerationProvenance }

      # @!attribute violent_crimes
      #   Violent crimes.
      #
      #   @return [Symbol, Dodopayments::Models::ModerationProvenance]
      required :violent_crimes, enum: -> { Dodopayments::ModerationProvenance }

      # @!method initialize(child_sexual_exploitation:, defamation:, hate:, indiscriminate_weapons:, intellectual_property:, living_artist_style:, minor_coded_language:, non_consensual_intimate_imagery:, non_violent_crimes:, privacy:, prompt_injection:, real_person_likeness:, sex_related_crimes:, sexual_content:, specialized_advice:, suicide_and_self_harm:, violent_crimes:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ModerationCategoryProvenance} for more details.
      #
      #   How each score in `categories` was measured.
      #
      #   @param child_sexual_exploitation [Symbol, Dodopayments::Models::ModerationProvenance] Child sexual exploitation.
      #
      #   @param defamation [Symbol, Dodopayments::Models::ModerationProvenance] False depiction that is likely to injure the reputation of a real person.
      #
      #   @param hate [Symbol, Dodopayments::Models::ModerationProvenance] Demeaning people because of a protected characteristic.
      #
      #   @param indiscriminate_weapons [Symbol, Dodopayments::Models::ModerationProvenance] Chemical, biological, radiological, nuclear or explosive weapons.
      #
      #   @param intellectual_property [Symbol, Dodopayments::Models::ModerationProvenance] Copyright or trademark infringement.
      #
      #   @param living_artist_style [Symbol, Dodopayments::Models::ModerationProvenance] Imitation of the signature style of a specific living artist.
      #
      #   @param minor_coded_language [Symbol, Dodopayments::Models::ModerationProvenance] Age-coded language that suggests the subject is a minor.
      #
      #   @param non_consensual_intimate_imagery [Symbol, Dodopayments::Models::ModerationProvenance] Non-consensual intimate imagery: undressing, nudifying or sexualising a real per
      #
      #   @param non_violent_crimes [Symbol, Dodopayments::Models::ModerationProvenance] Non-violent crimes.
      #
      #   @param privacy [Symbol, Dodopayments::Models::ModerationProvenance] Sensitive private information about a person.
      #
      #   @param prompt_injection [Symbol, Dodopayments::Models::ModerationProvenance] An attempt to override or manipulate the instructions of the system.
      #
      #   @param real_person_likeness [Symbol, Dodopayments::Models::ModerationProvenance] The likeness of a real, identifiable, named person.
      #
      #   @param sex_related_crimes [Symbol, Dodopayments::Models::ModerationProvenance] Sex-related crimes.
      #
      #   @param sexual_content [Symbol, Dodopayments::Models::ModerationProvenance] Sexually explicit or pornographic content.
      #
      #   @param specialized_advice [Symbol, Dodopayments::Models::ModerationProvenance] Unqualified financial, medical, legal or electoral advice.
      #
      #   @param suicide_and_self_harm [Symbol, Dodopayments::Models::ModerationProvenance] Suicide and self-harm.
      #
      #   @param violent_crimes [Symbol, Dodopayments::Models::ModerationProvenance] Violent crimes.
    end
  end
end

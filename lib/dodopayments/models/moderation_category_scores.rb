# frozen_string_literal: true

module Dodopayments
  module Models
    class ModerationCategoryScores < Dodopayments::Internal::Type::BaseModel
      # @!attribute child_sexual_exploitation
      #   Child sexual exploitation.
      #
      #   @return [Float]
      required :child_sexual_exploitation, Float

      # @!attribute defamation
      #   False depiction that is likely to injure the reputation of a real person.
      #
      #   @return [Float]
      required :defamation, Float

      # @!attribute hate
      #   Demeaning people because of a protected characteristic.
      #
      #   @return [Float]
      required :hate, Float

      # @!attribute indiscriminate_weapons
      #   Chemical, biological, radiological, nuclear or explosive weapons.
      #
      #   @return [Float]
      required :indiscriminate_weapons, Float

      # @!attribute intellectual_property
      #   Copyright or trademark infringement.
      #
      #   @return [Float]
      required :intellectual_property, Float

      # @!attribute living_artist_style
      #   Imitation of the signature style of a specific living artist.
      #
      #   @return [Float]
      required :living_artist_style, Float

      # @!attribute minor_coded_language
      #   Age-coded language that suggests the subject is a minor.
      #
      #   @return [Float]
      required :minor_coded_language, Float

      # @!attribute non_consensual_intimate_imagery
      #   Non-consensual intimate imagery: undressing, nudifying or sexualising a real
      #   person.
      #
      #   @return [Float]
      required :non_consensual_intimate_imagery, Float

      # @!attribute non_violent_crimes
      #   Non-violent crimes.
      #
      #   @return [Float]
      required :non_violent_crimes, Float

      # @!attribute privacy
      #   Sensitive private information about a person.
      #
      #   @return [Float]
      required :privacy, Float

      # @!attribute prompt_injection
      #   An attempt to override or manipulate the instructions of the system.
      #
      #   @return [Float]
      required :prompt_injection, Float

      # @!attribute real_person_likeness
      #   The likeness of a real, identifiable, named person.
      #
      #   @return [Float]
      required :real_person_likeness, Float

      # @!attribute sex_related_crimes
      #   Sex-related crimes.
      #
      #   @return [Float]
      required :sex_related_crimes, Float

      # @!attribute sexual_content
      #   Sexually explicit or pornographic content.
      #
      #   @return [Float]
      required :sexual_content, Float

      # @!attribute specialized_advice
      #   Unqualified financial, medical, legal or electoral advice.
      #
      #   @return [Float]
      required :specialized_advice, Float

      # @!attribute suicide_and_self_harm
      #   Suicide and self-harm.
      #
      #   @return [Float]
      required :suicide_and_self_harm, Float

      # @!attribute violent_crimes
      #   Violent crimes.
      #
      #   @return [Float]
      required :violent_crimes, Float

      # @!method initialize(child_sexual_exploitation:, defamation:, hate:, indiscriminate_weapons:, intellectual_property:, living_artist_style:, minor_coded_language:, non_consensual_intimate_imagery:, non_violent_crimes:, privacy:, prompt_injection:, real_person_likeness:, sex_related_crimes:, sexual_content:, specialized_advice:, suicide_and_self_harm:, violent_crimes:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ModerationCategoryScores} for more details.
      #
      #   The probability, from 0 to 1, that the screen falls in each category.
      #
      #   @param child_sexual_exploitation [Float] Child sexual exploitation.
      #
      #   @param defamation [Float] False depiction that is likely to injure the reputation of a real person.
      #
      #   @param hate [Float] Demeaning people because of a protected characteristic.
      #
      #   @param indiscriminate_weapons [Float] Chemical, biological, radiological, nuclear or explosive weapons.
      #
      #   @param intellectual_property [Float] Copyright or trademark infringement.
      #
      #   @param living_artist_style [Float] Imitation of the signature style of a specific living artist.
      #
      #   @param minor_coded_language [Float] Age-coded language that suggests the subject is a minor.
      #
      #   @param non_consensual_intimate_imagery [Float] Non-consensual intimate imagery: undressing, nudifying or sexualising a real per
      #
      #   @param non_violent_crimes [Float] Non-violent crimes.
      #
      #   @param privacy [Float] Sensitive private information about a person.
      #
      #   @param prompt_injection [Float] An attempt to override or manipulate the instructions of the system.
      #
      #   @param real_person_likeness [Float] The likeness of a real, identifiable, named person.
      #
      #   @param sex_related_crimes [Float] Sex-related crimes.
      #
      #   @param sexual_content [Float] Sexually explicit or pornographic content.
      #
      #   @param specialized_advice [Float] Unqualified financial, medical, legal or electoral advice.
      #
      #   @param suicide_and_self_harm [Float] Suicide and self-harm.
      #
      #   @param violent_crimes [Float] Violent crimes.
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::Translations#update
      class Translation < Dodopayments::Internal::Type::BaseModel
        # @!attribute locale
        #   The locale of the translation.
        #
        #   @return [Symbol, Dodopayments::Models::Locale]
        required :locale, enum: -> { Dodopayments::Locale }

        # @!attribute updated_at
        #   The time of the last change.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute description
        #   The translated description. `null` shows that the description has no
        #   translation.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute name
        #   The translated name. `null` shows that the name has no translation.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(locale:, updated_at:, description: nil, name: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Products::Translation} for more details.
        #
        #   The translation of a product, an add-on, a product collection or a meter in one
        #   locale.
        #
        #   @param locale [Symbol, Dodopayments::Models::Locale] The locale of the translation.
        #
        #   @param updated_at [Time] The time of the last change.
        #
        #   @param description [String, nil] The translated description. `null` shows that the description has no translation
        #
        #   @param name [String, nil] The translated name. `null` shows that the name has no translation.
      end
    end
  end
end

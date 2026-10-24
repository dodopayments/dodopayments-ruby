# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Translations#update
      class EntitlementTranslation < Dodopayments::Internal::Type::BaseModel
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

        # @!attribute activation_message
        #   The translated activation message of a `license_key` entitlement.
        #
        #   @return [String, nil]
        optional :activation_message, String, nil?: true

        # @!attribute description
        #   The translated description. `null` shows that the description has no
        #   translation.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute instructions
        #   The translated delivery instructions of a `digital_files` entitlement.
        #
        #   @return [String, nil]
        optional :instructions, String, nil?: true

        # @!attribute name
        #   The translated name. `null` shows that the name has no translation.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(locale:, updated_at:, activation_message: nil, description: nil, instructions: nil, name: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::EntitlementTranslation} for more details.
        #
        #   The translation of an entitlement in one locale.
        #
        #   @param locale [Symbol, Dodopayments::Models::Locale] The locale of the translation.
        #
        #   @param updated_at [Time] The time of the last change.
        #
        #   @param activation_message [String, nil] The translated activation message of a `license_key` entitlement.
        #
        #   @param description [String, nil] The translated description. `null` shows that the description has no translation
        #
        #   @param instructions [String, nil] The translated delivery instructions of a `digital_files` entitlement.
        #
        #   @param name [String, nil] The translated name. `null` shows that the name has no translation.
      end
    end

    EntitlementTranslation = Entitlements::EntitlementTranslation
  end
end

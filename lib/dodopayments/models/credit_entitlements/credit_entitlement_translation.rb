# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Translations#update
      class CreditEntitlementTranslation < Dodopayments::Internal::Type::BaseModel
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

        # @!attribute name
        #   The translated name. `null` shows that the name has no translation.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute unit
        #   The translated unit. `null` shows that the unit has no translation.
        #
        #   @return [String, nil]
        optional :unit, String, nil?: true

        # @!method initialize(locale:, updated_at:, name: nil, unit: nil)
        #   The translation of a credit entitlement in one locale.
        #
        #   @param locale [Symbol, Dodopayments::Models::Locale] The locale of the translation.
        #
        #   @param updated_at [Time] The time of the last change.
        #
        #   @param name [String, nil] The translated name. `null` shows that the name has no translation.
        #
        #   @param unit [String, nil] The translated unit. `null` shows that the unit has no translation.
      end
    end

    CreditEntitlementTranslation = CreditEntitlements::CreditEntitlementTranslation
  end
end

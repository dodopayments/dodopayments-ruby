# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Translations#list
      class EntitlementTranslationsListResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Dodopayments::Models::Entitlements::EntitlementTranslation>]
        required :items,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Entitlements::EntitlementTranslation] }

        # @!method initialize(items:)
        #   The translations of an entitlement.
        #
        #   @param items [Array<Dodopayments::Models::Entitlements::EntitlementTranslation>]
      end
    end

    EntitlementTranslationsListResponse = Entitlements::EntitlementTranslationsListResponse
  end
end

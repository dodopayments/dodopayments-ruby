# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Translations#list
      class CreditEntitlementTranslationsListResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Dodopayments::Models::CreditEntitlements::CreditEntitlementTranslation>]
        required :items,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::CreditEntitlements::CreditEntitlementTranslation] }

        # @!method initialize(items:)
        #   The translations of a credit entitlement.
        #
        #   @param items [Array<Dodopayments::Models::CreditEntitlements::CreditEntitlementTranslation>]
      end
    end

    CreditEntitlementTranslationsListResponse = CreditEntitlements::CreditEntitlementTranslationsListResponse
  end
end

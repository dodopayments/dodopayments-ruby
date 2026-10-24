# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Translations#update
      class TranslationUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute locale
        #   A locale that the checkout and the customer portal can show.
        #
        #   The codes are a copy of the checkout locales. `GET /locales` lists them.
        #
        #   @return [Symbol, Dodopayments::Models::Locale]
        required :locale, enum: -> { Dodopayments::Locale }

        # @!attribute name
        #   The translated name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute unit
        #   The translated unit.
        #
        #   @return [String, nil]
        optional :unit, String, nil?: true

        # @!method initialize(id:, locale:, name: nil, unit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CreditEntitlements::TranslationUpdateParams} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param locale [Symbol, Dodopayments::Models::Locale] A locale that the checkout and the customer portal can show.
        #
        #   @param name [String, nil] The translated name.
        #
        #   @param unit [String, nil] The translated unit.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

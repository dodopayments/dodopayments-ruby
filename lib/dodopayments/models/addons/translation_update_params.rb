# frozen_string_literal: true

module Dodopayments
  module Models
    module Addons
      # @see Dodopayments::Resources::Addons::Translations#update
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

        # @!attribute description
        #   The translated description.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute name
        #   The translated name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(id:, locale:, description: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Addons::TranslationUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param locale [Symbol, Dodopayments::Models::Locale] A locale that the checkout and the customer portal can show.
        #
        #   @param description [String, nil] The translated description.
        #
        #   @param name [String, nil] The translated name.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

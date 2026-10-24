# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Translations#update
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

        # @!attribute activation_message
        #   The translated activation message. Only a `license_key` entitlement has it.
        #
        #   @return [String, nil]
        optional :activation_message, String, nil?: true

        # @!attribute description
        #   The translated description.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute instructions
        #   The translated delivery instructions. Only a `digital_files` entitlement has
        #   them.
        #
        #   @return [String, nil]
        optional :instructions, String, nil?: true

        # @!attribute name
        #   The translated name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(id:, locale:, activation_message: nil, description: nil, instructions: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::TranslationUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param locale [Symbol, Dodopayments::Models::Locale] A locale that the checkout and the customer portal can show.
        #
        #   @param activation_message [String, nil] The translated activation message. Only a `license_key` entitlement has it.
        #
        #   @param description [String, nil] The translated description.
        #
        #   @param instructions [String, nil] The translated delivery instructions. Only a `digital_files` entitlement has the
        #
        #   @param name [String, nil] The translated name.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    class BillingAddress < Dodopayments::Internal::Type::BaseModel
      # @!attribute city
      #   City name
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   ISO country code alpha2 variant
      #
      #   @return [Symbol, Dodopayments::Models::CountryCode]
      required :country, enum: -> { Dodopayments::CountryCode }

      # @!attribute state
      #   State or province name
      #
      #   @return [String]
      required :state, String

      # @!attribute street
      #   Street address including house number and unit/apartment if applicable
      #
      #   @return [String]
      required :street, String

      # @!attribute zipcode
      #   Postal code or ZIP code
      #
      #   @return [String]
      required :zipcode, String

      # @!method initialize(city:, country:, state:, street:, zipcode:)
      #   @param city [String] City name
      #
      #   @param country [Symbol, Dodopayments::Models::CountryCode] ISO country code alpha2 variant
      #
      #   @param state [String] State or province name
      #
      #   @param street [String] Street address including house number and unit/apartment if applicable
      #
      #   @param zipcode [String] Postal code or ZIP code
    end
  end
end

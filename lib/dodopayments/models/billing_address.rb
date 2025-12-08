# frozen_string_literal: true

module Dodopayments
  module Models
    class BillingAddress < Dodopayments::Internal::Type::BaseModel
      # @!attribute country
      #   Two-letter ISO country code (ISO 3166-1 alpha-2)
      #
      #   @return [Symbol, Dodopayments::Models::CountryCode]
      required :country, enum: -> { Dodopayments::CountryCode }

      # @!attribute city
      #   City name
      #
      #   @return [String, nil]
      optional :city, String, nil?: true

      # @!attribute state
      #   State or province name
      #
      #   @return [String, nil]
      optional :state, String, nil?: true

      # @!attribute street
      #   Street address including house number and unit/apartment if applicable
      #
      #   @return [String, nil]
      optional :street, String, nil?: true

      # @!attribute zipcode
      #   Postal code or ZIP code
      #
      #   @return [String, nil]
      optional :zipcode, String, nil?: true

      # @!method initialize(country:, city: nil, state: nil, street: nil, zipcode: nil)
      #   @param country [Symbol, Dodopayments::Models::CountryCode] Two-letter ISO country code (ISO 3166-1 alpha-2)
      #
      #   @param city [String, nil] City name
      #
      #   @param state [String, nil] State or province name
      #
      #   @param street [String, nil] Street address including house number and unit/apartment if applicable
      #
      #   @param zipcode [String, nil] Postal code or ZIP code
    end
  end
end

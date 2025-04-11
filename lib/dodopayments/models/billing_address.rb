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
      required :country, enum: -> { Dodopayments::Models::CountryCode }

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

      # @!parse
      #   # @param city [String]
      #   # @param country [Symbol, Dodopayments::Models::CountryCode]
      #   # @param state [String]
      #   # @param street [String]
      #   # @param zipcode [String]
      #   #
      #   def initialize(city:, country:, state:, street:, zipcode:, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end

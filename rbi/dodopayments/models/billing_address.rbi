# typed: strong

module Dodopayments
  module Models
    class BillingAddress < Dodopayments::Internal::Type::BaseModel
      # City name
      sig { returns(String) }
      attr_accessor :city

      # ISO country code alpha2 variant
      sig { returns(Dodopayments::Models::CountryCode::OrSymbol) }
      attr_accessor :country

      # State or province name
      sig { returns(String) }
      attr_accessor :state

      # Street address including house number and unit/apartment if applicable
      sig { returns(String) }
      attr_accessor :street

      # Postal code or ZIP code
      sig { returns(String) }
      attr_accessor :zipcode

      sig do
        params(
          city: String,
          country: Dodopayments::Models::CountryCode::OrSymbol,
          state: String,
          street: String,
          zipcode: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        # City name
        city:,
        # ISO country code alpha2 variant
        country:,
        # State or province name
        state:,
        # Street address including house number and unit/apartment if applicable
        street:,
        # Postal code or ZIP code
        zipcode:
      ); end
      sig do
        override
          .returns(
            {city: String, country: Dodopayments::Models::CountryCode::OrSymbol, state: String, street: String, zipcode: String}
          )
      end
      def to_hash; end
    end
  end
end

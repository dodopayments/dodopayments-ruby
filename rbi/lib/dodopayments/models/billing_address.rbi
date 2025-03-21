# typed: strong

module Dodopayments
  module Models
    class BillingAddress < Dodopayments::BaseModel
      # City name
      sig { returns(String) }
      def city
      end

      sig { params(_: String).returns(String) }
      def city=(_)
      end

      # ISO country code alpha2 variant
      sig { returns(Dodopayments::Models::CountryCode::OrSymbol) }
      def country
      end

      sig do
        params(_: Dodopayments::Models::CountryCode::OrSymbol).returns(Dodopayments::Models::CountryCode::OrSymbol)
      end
      def country=(_)
      end

      # State or province name
      sig { returns(String) }
      def state
      end

      sig { params(_: String).returns(String) }
      def state=(_)
      end

      # Street address including house number and unit/apartment if applicable
      sig { returns(String) }
      def street
      end

      sig { params(_: String).returns(String) }
      def street=(_)
      end

      # Postal code or ZIP code
      sig { returns(String) }
      def zipcode
      end

      sig { params(_: String).returns(String) }
      def zipcode=(_)
      end

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
      def self.new(city:, country:, state:, street:, zipcode:)
      end

      sig do
        override
          .returns(
            {city: String, country: Dodopayments::Models::CountryCode::OrSymbol, state: String, street: String, zipcode: String}
          )
      end
      def to_hash
      end
    end
  end
end

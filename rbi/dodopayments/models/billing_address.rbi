# typed: strong

module Dodopayments
  module Models
    class BillingAddress < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::BillingAddress, Dodopayments::Internal::AnyHash)
        end

      # City name
      sig { returns(String) }
      attr_accessor :city

      # Two-letter ISO country code (ISO 3166-1 alpha-2)
      sig { returns(Dodopayments::CountryCode::OrSymbol) }
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
          country: Dodopayments::CountryCode::OrSymbol,
          state: String,
          street: String,
          zipcode: String
        ).returns(T.attached_class)
      end
      def self.new(
        # City name
        city:,
        # Two-letter ISO country code (ISO 3166-1 alpha-2)
        country:,
        # State or province name
        state:,
        # Street address including house number and unit/apartment if applicable
        street:,
        # Postal code or ZIP code
        zipcode:
      )
      end

      sig do
        override.returns(
          {
            city: String,
            country: Dodopayments::CountryCode::OrSymbol,
            state: String,
            street: String,
            zipcode: String
          }
        )
      end
      def to_hash
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class BillingAddress < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::BillingAddress, Dodopayments::Internal::AnyHash)
        end

      # Two-letter ISO country code (ISO 3166-1 alpha-2)
      sig { returns(Dodopayments::CountryCode::OrSymbol) }
      attr_accessor :country

      # City name
      sig { returns(T.nilable(String)) }
      attr_accessor :city

      # State or province name
      sig { returns(T.nilable(String)) }
      attr_accessor :state

      # Street address including house number and unit/apartment if applicable
      sig { returns(T.nilable(String)) }
      attr_accessor :street

      # Postal code or ZIP code
      sig { returns(T.nilable(String)) }
      attr_accessor :zipcode

      sig do
        params(
          country: Dodopayments::CountryCode::OrSymbol,
          city: T.nilable(String),
          state: T.nilable(String),
          street: T.nilable(String),
          zipcode: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Two-letter ISO country code (ISO 3166-1 alpha-2)
        country:,
        # City name
        city: nil,
        # State or province name
        state: nil,
        # Street address including house number and unit/apartment if applicable
        street: nil,
        # Postal code or ZIP code
        zipcode: nil
      )
      end

      sig do
        override.returns(
          {
            country: Dodopayments::CountryCode::OrSymbol,
            city: T.nilable(String),
            state: T.nilable(String),
            street: T.nilable(String),
            zipcode: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

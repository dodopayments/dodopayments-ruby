# typed: strong

module Dodopayments
  module Models
    module Products
      class LocalizedPrice < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::LocalizedPrice,
              Dodopayments::Internal::AnyHash
            )
          end

        # Unique identifier for the localized price.
        sig { returns(String) }
        attr_accessor :id

        # Amount in the smallest currency unit (e.g., cents).
        sig { returns(Integer) }
        attr_accessor :amount

        # Timestamp when the localized price was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Currency to charge in.
        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :currency

        # Pricing mode of the rule: by_currency or by_country.
        sig { returns(Dodopayments::Products::PricingMode::TaggedSymbol) }
        attr_accessor :mode

        # Product this localized price belongs to.
        sig { returns(String) }
        attr_accessor :product_id

        # Timestamp when the localized price was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Country the rule applies to. Only set when mode is by_country.
        sig { returns(T.nilable(Dodopayments::CountryCode::TaggedSymbol)) }
        attr_accessor :country_code

        sig do
          params(
            id: String,
            amount: Integer,
            created_at: Time,
            currency: Dodopayments::Currency::OrSymbol,
            mode: Dodopayments::Products::PricingMode::OrSymbol,
            product_id: String,
            updated_at: Time,
            country_code: T.nilable(Dodopayments::CountryCode::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the localized price.
          id:,
          # Amount in the smallest currency unit (e.g., cents).
          amount:,
          # Timestamp when the localized price was created.
          created_at:,
          # Currency to charge in.
          currency:,
          # Pricing mode of the rule: by_currency or by_country.
          mode:,
          # Product this localized price belongs to.
          product_id:,
          # Timestamp when the localized price was last updated.
          updated_at:,
          # Country the rule applies to. Only set when mode is by_country.
          country_code: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              created_at: Time,
              currency: Dodopayments::Currency::TaggedSymbol,
              mode: Dodopayments::Products::PricingMode::TaggedSymbol,
              product_id: String,
              updated_at: Time,
              country_code: T.nilable(Dodopayments::CountryCode::TaggedSymbol)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

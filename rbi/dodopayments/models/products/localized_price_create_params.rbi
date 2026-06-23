# typed: strong

module Dodopayments
  module Models
    module Products
      class LocalizedPriceCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::LocalizedPriceCreateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        # Amount in the smallest currency unit (e.g., cents). Must be greater than zero.
        sig { returns(Integer) }
        attr_accessor :amount

        # Currency to charge in. Must be a supported currency.
        sig { returns(Dodopayments::Currency::OrSymbol) }
        attr_accessor :currency

        # Required when the product's pricing_mode is by_country; forbidden when
        # by_currency.
        sig { returns(T.nilable(Dodopayments::CountryCode::OrSymbol)) }
        attr_accessor :country_code

        sig do
          params(
            product_id: String,
            amount: Integer,
            currency: Dodopayments::Currency::OrSymbol,
            country_code: T.nilable(Dodopayments::CountryCode::OrSymbol),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          product_id:,
          # Amount in the smallest currency unit (e.g., cents). Must be greater than zero.
          amount:,
          # Currency to charge in. Must be a supported currency.
          currency:,
          # Required when the product's pricing_mode is by_country; forbidden when
          # by_currency.
          country_code: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              product_id: String,
              amount: Integer,
              currency: Dodopayments::Currency::OrSymbol,
              country_code: T.nilable(Dodopayments::CountryCode::OrSymbol),
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

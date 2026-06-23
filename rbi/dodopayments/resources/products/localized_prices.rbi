# typed: strong

module Dodopayments
  module Resources
    class Products
      class LocalizedPrices
        sig do
          params(
            product_id: String,
            amount: Integer,
            currency: Dodopayments::Currency::OrSymbol,
            country_code: T.nilable(Dodopayments::CountryCode::OrSymbol),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Products::LocalizedPrice)
        end
        def create(
          # Product Id
          product_id,
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
          params(
            id: String,
            product_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Products::LocalizedPrice)
        end
        def retrieve(
          # Localized Price Id
          id,
          # Product Id
          product_id:,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            product_id: String,
            amount: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Products::LocalizedPrice)
        end
        def update(
          # Path param: Localized Price Id
          id,
          # Path param: Product Id
          product_id:,
          # Body param: New amount in the smallest currency unit (e.g., cents). Must be
          # greater than zero. The currency and country_code of an existing rule cannot be
          # changed.
          amount: nil,
          request_options: {}
        )
        end

        sig do
          params(
            product_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Products::ListLocalizedPricesResponse)
        end
        def list(
          # Product Id
          product_id,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            product_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def archive(
          # Localized Price Id
          id,
          # Product Id
          product_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    module Products
      class LocalizedPriceUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::LocalizedPriceUpdateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(String) }
        attr_accessor :id

        # New amount in the smallest currency unit (e.g., cents). Must be greater than
        # zero. The currency and country_code of an existing rule cannot be changed.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount

        sig do
          params(
            product_id: String,
            id: String,
            amount: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          product_id:,
          id:,
          # New amount in the smallest currency unit (e.g., cents). Must be greater than
          # zero. The currency and country_code of an existing rule cannot be changed.
          amount: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              product_id: String,
              id: String,
              amount: T.nilable(Integer),
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

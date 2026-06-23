# typed: strong

module Dodopayments
  module Models
    module Products
      class LocalizedPriceArchiveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::LocalizedPriceArchiveParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            product_id: String,
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(product_id:, id:, request_options: {})
        end

        sig do
          override.returns(
            {
              product_id: String,
              id: String,
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

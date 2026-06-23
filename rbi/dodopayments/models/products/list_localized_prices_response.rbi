# typed: strong

module Dodopayments
  module Models
    module Products
      class ListLocalizedPricesResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::ListLocalizedPricesResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Dodopayments::Products::LocalizedPrice]) }
        attr_accessor :items

        sig do
          params(
            items: T::Array[Dodopayments::Products::LocalizedPrice::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            { items: T::Array[Dodopayments::Products::LocalizedPrice] }
          )
        end
        def to_hash
        end
      end
    end
  end
end

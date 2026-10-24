# typed: strong

module Dodopayments
  module Models
    module Products
      class TranslationsListResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::TranslationsListResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Dodopayments::Products::Translation]) }
        attr_accessor :items

        # The translations of a product, an add-on, a product collection or a meter.
        sig do
          params(
            items: T::Array[Dodopayments::Products::Translation::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            { items: T::Array[Dodopayments::Products::Translation] }
          )
        end
        def to_hash
        end
      end
    end
  end
end

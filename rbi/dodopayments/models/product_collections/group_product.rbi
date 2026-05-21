# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      class GroupProduct < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCollections::GroupProduct,
              Dodopayments::Internal::AnyHash
            )
          end

        # Product ID to include in the group
        sig { returns(String) }
        attr_accessor :product_id

        # Status of the product in this group (defaults to true if not provided)
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :status

        sig do
          params(product_id: String, status: T.nilable(T::Boolean)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Product ID to include in the group
          product_id:,
          # Status of the product in this group (defaults to true if not provided)
          status: nil
        )
        end

        sig do
          override.returns(
            { product_id: String, status: T.nilable(T::Boolean) }
          )
        end
        def to_hash
        end
      end
    end
  end
end

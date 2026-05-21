# typed: strong

module Dodopayments
  module Models
    ProductCollectionGroupDetails =
      ProductCollections::ProductCollectionGroupDetails

    module ProductCollections
      class ProductCollectionGroupDetails < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCollections::ProductCollectionGroupDetails,
              Dodopayments::Internal::AnyHash
            )
          end

        # Products in this group
        sig do
          returns(T::Array[Dodopayments::ProductCollections::GroupProduct])
        end
        attr_accessor :products

        # Optional group name. Multiple groups can have null names, but named groups must
        # be unique per collection
        sig { returns(T.nilable(String)) }
        attr_accessor :group_name

        # Status of the group (defaults to true if not provided)
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :status

        sig do
          params(
            products:
              T::Array[Dodopayments::ProductCollections::GroupProduct::OrHash],
            group_name: T.nilable(String),
            status: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # Products in this group
          products:,
          # Optional group name. Multiple groups can have null names, but named groups must
          # be unique per collection
          group_name: nil,
          # Status of the group (defaults to true if not provided)
          status: nil
        )
        end

        sig do
          override.returns(
            {
              products:
                T::Array[Dodopayments::ProductCollections::GroupProduct],
              group_name: T.nilable(String),
              status: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    ProductCollectionGroupResponse =
      ProductCollections::ProductCollectionGroupResponse

    module ProductCollections
      class ProductCollectionGroupResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCollections::ProductCollectionGroupResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :group_id

        sig do
          returns(
            T::Array[
              Dodopayments::ProductCollections::Groups::ProductCollectionProduct
            ]
          )
        end
        attr_accessor :products

        sig { returns(T::Boolean) }
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_accessor :group_name

        sig do
          params(
            group_id: String,
            products:
              T::Array[
                Dodopayments::ProductCollections::Groups::ProductCollectionProduct::OrHash
              ],
            status: T::Boolean,
            group_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(group_id:, products:, status:, group_name: nil)
        end

        sig do
          override.returns(
            {
              group_id: String,
              products:
                T::Array[
                  Dodopayments::ProductCollections::Groups::ProductCollectionProduct
                ],
              status: T::Boolean,
              group_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

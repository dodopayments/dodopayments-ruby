# typed: strong

module Dodopayments
  module Resources
    class ProductCollections
      class Groups
        class Items
          sig do
            params(
              group_id: String,
              id: String,
              products:
                T::Array[
                  Dodopayments::ProductCollections::Groups::ItemCreateParams::Product::OrHash
                ],
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(
              T::Array[
                Dodopayments::Models::ProductCollections::Groups::ItemCreateResponseItem
              ]
            )
          end
          def create(
            # Path param: Product Collection Group Id
            group_id,
            # Path param: Product Collection Id
            id:,
            # Body param: Products to add to the group
            products:,
            request_options: {}
          )
          end

          sig do
            params(
              item_id: String,
              id: String,
              group_id: String,
              status: T::Boolean,
              request_options: Dodopayments::RequestOptions::OrHash
            ).void
          end
          def update(
            # Path param: Collection item Id (product membership in group)
            item_id,
            # Path param: Product Collection Id
            id:,
            # Path param: Product Collection Group Id
            group_id:,
            # Body param: Status of the product in the group
            status:,
            request_options: {}
          )
          end

          sig do
            params(
              item_id: String,
              id: String,
              group_id: String,
              request_options: Dodopayments::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Collection item Id (product membership in group)
            item_id,
            # Product Collection Id
            id:,
            # Product Collection Group Id
            group_id:,
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
end

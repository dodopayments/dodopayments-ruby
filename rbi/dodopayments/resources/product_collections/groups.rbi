# typed: strong

module Dodopayments
  module Resources
    class ProductCollections
      class Groups
        sig do
          returns(Dodopayments::Resources::ProductCollections::Groups::Items)
        end
        attr_reader :items

        sig do
          params(
            id: String,
            products:
              T::Array[
                Dodopayments::ProductCollections::GroupCreateParams::Product::OrHash
              ],
            group_name: T.nilable(String),
            status: T.nilable(T::Boolean),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Models::ProductCollections::GroupCreateResponse
          )
        end
        def create(
          # Product Collection Id
          id,
          # Products in this group
          products:,
          # Optional group name. Multiple groups can have null names, but named groups must
          # be unique per collection
          group_name: nil,
          # Status of the group (defaults to true if not provided)
          status: nil,
          request_options: {}
        )
        end

        sig do
          params(
            group_id: String,
            id: String,
            group_name: T.nilable(String),
            product_order: T.nilable(T::Array[String]),
            status: T.nilable(T::Boolean),
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def update(
          # Path param: Product Collection Group Id
          group_id,
          # Path param: Product Collection Id
          id:,
          # Body param: Optional group name update: Some(Some(name)) = set name, Some(None)
          # = clear name, None = no change
          group_name: nil,
          # Body param: Optional new order for products in this group (array of
          # product_collection_group_pdts UUIDs)
          product_order: nil,
          # Body param: Optional status update
          status: nil,
          request_options: {}
        )
        end

        sig do
          params(
            group_id: String,
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Product Collection Group Id
          group_id,
          # Product Collection Id
          id:,
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

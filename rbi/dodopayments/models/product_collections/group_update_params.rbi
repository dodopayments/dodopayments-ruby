# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      class GroupUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCollections::GroupUpdateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :group_id

        # Optional group name update: Some(Some(name)) = set name, Some(None) = clear
        # name, None = no change
        sig { returns(T.nilable(String)) }
        attr_accessor :group_name

        # Optional new order for products in this group (array of
        # product_collection_group_pdts UUIDs)
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :product_order

        # Optional status update
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :status

        sig do
          params(
            id: String,
            group_id: String,
            group_name: T.nilable(String),
            product_order: T.nilable(T::Array[String]),
            status: T.nilable(T::Boolean),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          group_id:,
          # Optional group name update: Some(Some(name)) = set name, Some(None) = clear
          # name, None = no change
          group_name: nil,
          # Optional new order for products in this group (array of
          # product_collection_group_pdts UUIDs)
          product_order: nil,
          # Optional status update
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              group_id: String,
              group_name: T.nilable(String),
              product_order: T.nilable(T::Array[String]),
              status: T.nilable(T::Boolean),
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

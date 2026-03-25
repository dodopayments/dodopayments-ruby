# typed: strong

module Dodopayments
  module Models
    class ProductCollectionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollectionUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Optional brand_id update
      sig { returns(T.nilable(String)) }
      attr_accessor :brand_id

      # Optional description update - pass null to remove, omit to keep unchanged
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional new order for groups (array of group UUIDs in desired order)
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :group_order

      # Optional image update - pass null to remove, omit to keep unchanged
      sig { returns(T.nilable(String)) }
      attr_accessor :image_id

      # Optional new name for the collection
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          id: String,
          brand_id: T.nilable(String),
          description: T.nilable(String),
          group_order: T.nilable(T::Array[String]),
          image_id: T.nilable(String),
          name: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Optional brand_id update
        brand_id: nil,
        # Optional description update - pass null to remove, omit to keep unchanged
        description: nil,
        # Optional new order for groups (array of group UUIDs in desired order)
        group_order: nil,
        # Optional image update - pass null to remove, omit to keep unchanged
        image_id: nil,
        # Optional new name for the collection
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            brand_id: T.nilable(String),
            description: T.nilable(String),
            group_order: T.nilable(T::Array[String]),
            image_id: T.nilable(String),
            name: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

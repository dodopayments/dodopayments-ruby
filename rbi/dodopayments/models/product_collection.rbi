# typed: strong

module Dodopayments
  module Models
    class ProductCollection < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollection,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique identifier for the product collection
      sig { returns(String) }
      attr_accessor :id

      # Brand ID for the collection
      sig { returns(String) }
      attr_accessor :brand_id

      # Timestamp when the collection was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Groups in this collection
      sig do
        returns(
          T::Array[
            Dodopayments::ProductCollections::ProductCollectionGroupResponse
          ]
        )
      end
      attr_accessor :groups

      # Name of the collection
      sig { returns(String) }
      attr_accessor :name

      # Timestamp when the collection was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Description of the collection
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # URL of the collection image
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      sig do
        params(
          id: String,
          brand_id: String,
          created_at: Time,
          groups:
            T::Array[
              Dodopayments::ProductCollections::ProductCollectionGroupResponse::OrHash
            ],
          name: String,
          updated_at: Time,
          description: T.nilable(String),
          image: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the product collection
        id:,
        # Brand ID for the collection
        brand_id:,
        # Timestamp when the collection was created
        created_at:,
        # Groups in this collection
        groups:,
        # Name of the collection
        name:,
        # Timestamp when the collection was last updated
        updated_at:,
        # Description of the collection
        description: nil,
        # URL of the collection image
        image: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            brand_id: String,
            created_at: Time,
            groups:
              T::Array[
                Dodopayments::ProductCollections::ProductCollectionGroupResponse
              ],
            name: String,
            updated_at: Time,
            description: T.nilable(String),
            image: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

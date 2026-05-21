# typed: strong

module Dodopayments
  module Models
    class ProductCollectionListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ProductCollectionListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Collection ID
      sig { returns(String) }
      attr_accessor :id

      # Timestamp when created
      sig { returns(Time) }
      attr_accessor :created_at

      # Collection name
      sig { returns(String) }
      attr_accessor :name

      # Number of products in the collection
      sig { returns(Integer) }
      attr_accessor :products_count

      # Timestamp when last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Collection description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Collection image URL
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          products_count: Integer,
          updated_at: Time,
          description: T.nilable(String),
          image: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Collection ID
        id:,
        # Timestamp when created
        created_at:,
        # Collection name
        name:,
        # Number of products in the collection
        products_count:,
        # Timestamp when last updated
        updated_at:,
        # Collection description
        description: nil,
        # Collection image URL
        image: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            products_count: Integer,
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

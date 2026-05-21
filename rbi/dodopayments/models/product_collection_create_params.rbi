# typed: strong

module Dodopayments
  module Models
    class ProductCollectionCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollectionCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Groups of products in this collection
      sig do
        returns(
          T::Array[
            Dodopayments::ProductCollections::ProductCollectionGroupDetails
          ]
        )
      end
      attr_accessor :groups

      # Name of the product collection
      sig { returns(String) }
      attr_accessor :name

      # Brand id for the collection, if not provided will default to primary brand
      sig { returns(T.nilable(String)) }
      attr_accessor :brand_id

      # Optional description of the product collection
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig do
        params(
          groups:
            T::Array[
              Dodopayments::ProductCollections::ProductCollectionGroupDetails::OrHash
            ],
          name: String,
          brand_id: T.nilable(String),
          description: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Groups of products in this collection
        groups:,
        # Name of the product collection
        name:,
        # Brand id for the collection, if not provided will default to primary brand
        brand_id: nil,
        # Optional description of the product collection
        description: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            groups:
              T::Array[
                Dodopayments::ProductCollections::ProductCollectionGroupDetails
              ],
            name: String,
            brand_id: T.nilable(String),
            description: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

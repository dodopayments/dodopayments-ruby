# typed: strong

module Dodopayments
  module Resources
    class ProductCollections
      sig { returns(Dodopayments::Resources::ProductCollections::Groups) }
      attr_reader :groups

      sig do
        params(
          groups:
            T::Array[
              Dodopayments::ProductCollectionCreateParams::Group::OrHash
            ],
          name: String,
          brand_id: T.nilable(String),
          description: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::ProductCollectionCreateResponse)
      end
      def create(
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
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::ProductCollectionRetrieveResponse)
      end
      def retrieve(
        # Product Collection Id
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          brand_id: T.nilable(String),
          description: T.nilable(String),
          group_order: T.nilable(T::Array[String]),
          image_id: T.nilable(String),
          name: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def update(
        # Product Collection Id
        id,
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
        params(
          archived: T::Boolean,
          brand_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::ProductCollectionListResponse
          ]
        )
      end
      def list(
        # List archived collections
        archived: nil,
        # Filter by Brand id
        brand_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Product Collection Id
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::ProductCollectionUnarchiveResponse)
      end
      def unarchive(
        # Product Collection Id
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          force_update: T.nilable(T::Boolean),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::ProductCollectionUpdateImagesResponse)
      end
      def update_images(
        # Product Collection Id
        id,
        # If true, generates a new image ID to force cache invalidation
        force_update: nil,
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

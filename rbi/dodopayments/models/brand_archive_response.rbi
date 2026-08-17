# typed: strong

module Dodopayments
  module Models
    class BrandArchiveResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::BrandArchiveResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Time the brand was archived.
      sig { returns(Time) }
      attr_accessor :archived_at

      # The archived brand.
      sig { returns(String) }
      attr_accessor :brand_id

      # Count of product collections moved to the target brand.
      sig { returns(Integer) }
      attr_accessor :collections_moved

      # Count of products moved to the target brand.
      sig { returns(Integer) }
      attr_accessor :products_moved

      # Count of live subscriptions moved to the target brand.
      sig { returns(Integer) }
      attr_accessor :subscriptions_moved

      # Brand that received the moved records. Null when no target was given.
      sig { returns(T.nilable(String)) }
      attr_accessor :moved_to_brand_id

      sig do
        params(
          archived_at: Time,
          brand_id: String,
          collections_moved: Integer,
          products_moved: Integer,
          subscriptions_moved: Integer,
          moved_to_brand_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Time the brand was archived.
        archived_at:,
        # The archived brand.
        brand_id:,
        # Count of product collections moved to the target brand.
        collections_moved:,
        # Count of products moved to the target brand.
        products_moved:,
        # Count of live subscriptions moved to the target brand.
        subscriptions_moved:,
        # Brand that received the moved records. Null when no target was given.
        moved_to_brand_id: nil
      )
      end

      sig do
        override.returns(
          {
            archived_at: Time,
            brand_id: String,
            collections_moved: Integer,
            products_moved: Integer,
            subscriptions_moved: Integer,
            moved_to_brand_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

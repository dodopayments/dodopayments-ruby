# typed: strong

module Dodopayments
  module Models
    class ProductCollectionUpdateImagesResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ProductCollectionUpdateImagesResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Presigned S3 URL for uploading the image
      sig { returns(String) }
      attr_accessor :url

      # Optional image ID (present when force_update is true)
      sig { returns(T.nilable(String)) }
      attr_accessor :image_id

      sig do
        params(url: String, image_id: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # Presigned S3 URL for uploading the image
        url:,
        # Optional image ID (present when force_update is true)
        image_id: nil
      )
      end

      sig { override.returns({ url: String, image_id: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class BrandUpdateImagesResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::BrandUpdateImagesResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # UUID that will be used as the image identifier/key suffix
      sig { returns(String) }
      attr_accessor :image_id

      # Presigned URL to upload the image
      sig { returns(String) }
      attr_accessor :url

      sig { params(image_id: String, url: String).returns(T.attached_class) }
      def self.new(
        # UUID that will be used as the image identifier/key suffix
        image_id:,
        # Presigned URL to upload the image
        url:
      )
      end

      sig { override.returns({ image_id: String, url: String }) }
      def to_hash
      end
    end
  end
end

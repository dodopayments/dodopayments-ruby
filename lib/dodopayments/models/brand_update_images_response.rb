# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#update_images
    class BrandUpdateImagesResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute image_id
      #   UUID that will be used as the image identifier/key suffix
      #
      #   @return [String]
      required :image_id, String

      # @!attribute url
      #   Presigned URL to upload the image
      #
      #   @return [String]
      required :url, String

      # @!method initialize(image_id:, url:)
      #   @param image_id [String] UUID that will be used as the image identifier/key suffix
      #
      #   @param url [String] Presigned URL to upload the image
    end
  end
end

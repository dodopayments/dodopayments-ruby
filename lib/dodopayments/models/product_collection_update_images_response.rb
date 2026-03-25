# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#update_images
    class ProductCollectionUpdateImagesResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute url
      #   Presigned S3 URL for uploading the image
      #
      #   @return [String]
      required :url, String

      # @!attribute image_id
      #   Optional image ID (present when force_update is true)
      #
      #   @return [String, nil]
      optional :image_id, String, nil?: true

      # @!method initialize(url:, image_id: nil)
      #   @param url [String] Presigned S3 URL for uploading the image
      #
      #   @param image_id [String, nil] Optional image ID (present when force_update is true)
    end
  end
end

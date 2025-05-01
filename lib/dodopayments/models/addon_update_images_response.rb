# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Addons#update_images
    class AddonUpdateImagesResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute image_id
      #
      #   @return [String]
      required :image_id, String

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(image_id:, url:)
      #   @param image_id [String]
      #   @param url [String]
    end
  end
end

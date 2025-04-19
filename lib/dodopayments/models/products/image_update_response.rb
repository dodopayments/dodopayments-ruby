# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::Images#update
      class ImageUpdateResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute image_id
        #
        #   @return [String, nil]
        optional :image_id, String, nil?: true

        # @!method initialize(url:, image_id: nil)
        #   @param url [String]
        #   @param image_id [String, nil]
      end
    end
  end
end

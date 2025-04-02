# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::Images#update
      class ImageUpdateResponse < Dodopayments::BaseModel
        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute image_id
        #
        #   @return [String, nil]
        optional :image_id, String, nil?: true

        # @!parse
        #   # @param url [String]
        #   # @param image_id [String, nil]
        #   #
        #   def initialize(url:, image_id: nil, **) = super

        # def initialize: (Hash | Dodopayments::BaseModel) -> void
      end
    end
  end
end

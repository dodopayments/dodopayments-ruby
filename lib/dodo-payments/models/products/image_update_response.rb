# frozen_string_literal: true

module DodoPayments
  module Models
    module Products
      class ImageUpdateResponse < DodoPayments::BaseModel
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

        # def initialize: (Hash | DodoPayments::BaseModel) -> void
      end
    end
  end
end

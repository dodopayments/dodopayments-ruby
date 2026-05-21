# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#update_images
    class ProductCollectionUpdateImagesParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute force_update
      #   If true, generates a new image ID to force cache invalidation
      #
      #   @return [Boolean, nil]
      optional :force_update, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!method initialize(id:, force_update: nil, request_options: {})
      #   @param id [String]
      #
      #   @param force_update [Boolean, nil] If true, generates a new image ID to force cache invalidation
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

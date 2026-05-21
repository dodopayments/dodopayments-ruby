# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      # @see Dodopayments::Resources::ProductCollections::Groups#create
      class GroupCreateParams < Dodopayments::Models::ProductCollections::ProductCollectionGroupDetails
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:, request_options: {})
        #   @param id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

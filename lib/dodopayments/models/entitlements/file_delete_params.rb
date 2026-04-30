# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Files#delete
      class FileDeleteParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String

        # @!method initialize(id:, file_id:, request_options: {})
        #   @param id [String]
        #   @param file_id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

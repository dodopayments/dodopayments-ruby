# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#update_files
    class ProductUpdateFilesParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute file_name
      #
      #   @return [String]
      required :file_name, String

      # @!method initialize(id:, file_name:, request_options: {})
      #   @param id [String]
      #   @param file_name [String]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

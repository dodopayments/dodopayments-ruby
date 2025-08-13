# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#update_files
    class ProductUpdateFilesResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(file_id:, url:)
      #   @param file_id [String]
      #   @param url [String]
    end
  end
end

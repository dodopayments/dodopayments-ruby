# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Files#upload
      class FileUploadResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute file_id
        #   Identifier of the attached file. Pass it to
        #   `DELETE /entitlements/{id}/files/{file_id}` to detach the file later.
        #
        #   @return [String]
        required :file_id, String

        # @!method initialize(file_id:)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::FileUploadResponse} for more details.
        #
        #   @param file_id [String] Identifier of the attached file. Pass it to
      end
    end
  end
end

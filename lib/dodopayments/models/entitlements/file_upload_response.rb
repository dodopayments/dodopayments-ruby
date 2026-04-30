# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Files#upload
      class FileUploadResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute file_id
        #   EE-issued digital file id; appended to
        #   `entitlements.integration_config.digital_file_ids`.
        #
        #   @return [String]
        required :file_id, String

        # @!method initialize(file_id:)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::FileUploadResponse} for more details.
        #
        #   @param file_id [String] EE-issued digital file id; appended to
      end
    end
  end
end

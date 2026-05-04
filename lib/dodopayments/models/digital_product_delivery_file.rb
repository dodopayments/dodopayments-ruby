# frozen_string_literal: true

module Dodopayments
  module Models
    class DigitalProductDeliveryFile < Dodopayments::Internal::Type::BaseModel
      # @!attribute download_url
      #   Short-lived presigned URL for downloading the file.
      #
      #   @return [String]
      required :download_url, String

      # @!attribute expires_in
      #   Seconds until `download_url` expires.
      #
      #   @return [Integer]
      required :expires_in, Integer

      # @!attribute file_id
      #   Identifier of the attached file.
      #
      #   @return [String]
      required :file_id, String

      # @!attribute filename
      #   Original filename of the attached file.
      #
      #   @return [String]
      required :filename, String

      # @!attribute content_type
      #   Optional content-type declared at upload.
      #
      #   @return [String, nil]
      optional :content_type, String, nil?: true

      # @!attribute file_size
      #   Optional size of the file in bytes.
      #
      #   @return [Integer, nil]
      optional :file_size, Integer, nil?: true

      # @!method initialize(download_url:, expires_in:, file_id:, filename:, content_type: nil, file_size: nil)
      #   One file in a digital-product delivery payload.
      #
      #   @param download_url [String] Short-lived presigned URL for downloading the file.
      #
      #   @param expires_in [Integer] Seconds until `download_url` expires.
      #
      #   @param file_id [String] Identifier of the attached file.
      #
      #   @param filename [String] Original filename of the attached file.
      #
      #   @param content_type [String, nil] Optional content-type declared at upload.
      #
      #   @param file_size [Integer, nil] Optional size of the file in bytes.
    end
  end
end

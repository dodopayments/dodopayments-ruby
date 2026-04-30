# frozen_string_literal: true

module Dodopayments
  module Models
    class DigitalProductDeliveryFile < Dodopayments::Internal::Type::BaseModel
      # @!attribute download_url
      #
      #   @return [String]
      required :download_url, String

      # @!attribute expires_in
      #   Seconds until `download_url` expires.
      #
      #   @return [Integer]
      required :expires_in, Integer

      # @!attribute file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute filename
      #
      #   @return [String]
      required :filename, String

      # @!attribute content_type
      #
      #   @return [String, nil]
      optional :content_type, String, nil?: true

      # @!attribute file_size
      #
      #   @return [Integer, nil]
      optional :file_size, Integer, nil?: true

      # @!method initialize(download_url:, expires_in:, file_id:, filename:, content_type: nil, file_size: nil)
      #   @param download_url [String]
      #
      #   @param expires_in [Integer] Seconds until `download_url` expires.
      #
      #   @param file_id [String]
      #
      #   @param filename [String]
      #
      #   @param content_type [String, nil]
      #
      #   @param file_size [Integer, nil]
    end
  end
end

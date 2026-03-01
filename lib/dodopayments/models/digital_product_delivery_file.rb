# frozen_string_literal: true

module Dodopayments
  module Models
    class DigitalProductDeliveryFile < Dodopayments::Internal::Type::BaseModel
      # @!attribute file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute file_name
      #
      #   @return [String]
      required :file_name, String

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(file_id:, file_name:, url:)
      #   @param file_id [String]
      #   @param file_name [String]
      #   @param url [String]
    end
  end
end

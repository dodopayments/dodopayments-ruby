# frozen_string_literal: true

module Dodopayments
  module Models
    class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
      # @!attribute external_url
      #   External URL to digital product
      #
      #   @return [String, nil]
      optional :external_url, String, nil?: true

      # @!attribute files
      #   Uploaded files ids of digital product
      #
      #   @return [Array<Dodopayments::Models::DigitalProductDeliveryFile>, nil]
      optional :files,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::DigitalProductDeliveryFile] },
               nil?: true

      # @!attribute instructions
      #   Instructions to download and use the digital product
      #
      #   @return [String, nil]
      optional :instructions, String, nil?: true

      # @!method initialize(external_url: nil, files: nil, instructions: nil)
      #   @param external_url [String, nil] External URL to digital product
      #
      #   @param files [Array<Dodopayments::Models::DigitalProductDeliveryFile>, nil] Uploaded files ids of digital product
      #
      #   @param instructions [String, nil] Instructions to download and use the digital product
    end
  end
end

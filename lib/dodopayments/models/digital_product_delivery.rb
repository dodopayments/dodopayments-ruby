# frozen_string_literal: true

module Dodopayments
  module Models
    class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
      # @!attribute files
      #
      #   @return [Array<Dodopayments::Models::DigitalProductDeliveryFile>]
      required :files, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::DigitalProductDeliveryFile] }

      # @!attribute external_url
      #
      #   @return [String, nil]
      optional :external_url, String, nil?: true

      # @!attribute instructions
      #
      #   @return [String, nil]
      optional :instructions, String, nil?: true

      # @!method initialize(files:, external_url: nil, instructions: nil)
      #   Digital-product-delivery payload for a grant. Populated for grants whose
      #   entitlement has `integration_type = 'digital_files'`. `files` carries presigned
      #   download URLs; the source (EE service or legacy in-process S3 presigning) is
      #   opaque to the caller.
      #
      #   @param files [Array<Dodopayments::Models::DigitalProductDeliveryFile>]
      #   @param external_url [String, nil]
      #   @param instructions [String, nil]
    end
  end
end

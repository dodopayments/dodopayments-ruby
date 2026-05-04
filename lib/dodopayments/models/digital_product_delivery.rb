# frozen_string_literal: true

module Dodopayments
  module Models
    class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
      # @!attribute files
      #   One entry per attached file.
      #
      #   @return [Array<Dodopayments::Models::DigitalProductDeliveryFile>]
      required :files, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::DigitalProductDeliveryFile] }

      # @!attribute external_url
      #   Optional external URL, passed through from the entitlement configuration.
      #
      #   @return [String, nil]
      optional :external_url, String, nil?: true

      # @!attribute instructions
      #   Optional human-readable delivery instructions, passed through from the
      #   entitlement configuration.
      #
      #   @return [String, nil]
      optional :instructions, String, nil?: true

      # @!method initialize(files:, external_url: nil, instructions: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::DigitalProductDelivery} for more details.
      #
      #   Digital-product-delivery payload, present on grants for `digital_files`
      #   entitlements. Each file carries a short-lived presigned download URL.
      #
      #   @param files [Array<Dodopayments::Models::DigitalProductDeliveryFile>] One entry per attached file.
      #
      #   @param external_url [String, nil] Optional external URL, passed through from the entitlement
      #
      #   @param instructions [String, nil] Optional human-readable delivery instructions, passed through from
    end
  end
end

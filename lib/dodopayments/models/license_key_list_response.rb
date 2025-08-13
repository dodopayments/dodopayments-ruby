# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyListResponseItem < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::LicenseKey>]
      required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::LicenseKey] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::LicenseKey>]
    end

    # @type [Dodopayments::Internal::Type::Converter]
    LicenseKeyListResponse =
      Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::Models::LicenseKeyListResponseItem }]
  end
end

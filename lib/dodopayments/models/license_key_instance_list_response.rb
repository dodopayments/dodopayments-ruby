# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyInstanceListResponseItem < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::LicenseKeyInstance>]
      required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::LicenseKeyInstance] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::LicenseKeyInstance>]
    end

    # @type [Dodopayments::Internal::Type::Converter]
    LicenseKeyInstanceListResponse =
      Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::Models::LicenseKeyInstanceListResponseItem }]
  end
end

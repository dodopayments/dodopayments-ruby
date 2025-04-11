# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyListResponseItem < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::LicenseKey>]
      required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::LicenseKey] }

      # @!parse
      #   # @param items [Array<Dodopayments::Models::LicenseKey>]
      #   #
      #   def initialize(items:, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end

    LicenseKeyListResponse =
      Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::Models::LicenseKeyListResponseItem }]
  end
end

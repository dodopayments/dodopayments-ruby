# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyListResponseItem < Dodopayments::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::LicenseKey>]
      required :items, -> { Dodopayments::ArrayOf[Dodopayments::Models::LicenseKey] }

      # @!parse
      #   # @param items [Array<Dodopayments::Models::LicenseKey>]
      #   #
      #   def initialize(items:, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end

    LicenseKeyListResponse = Dodopayments::ArrayOf[-> { Dodopayments::Models::LicenseKeyListResponseItem }]
  end
end

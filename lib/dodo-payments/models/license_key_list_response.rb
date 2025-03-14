# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseKeyListResponseItem < DodoPayments::BaseModel
      # @!attribute items
      #
      #   @return [Array<DodoPayments::Models::LicenseKey>]
      required :items, -> { DodoPayments::ArrayOf[DodoPayments::Models::LicenseKey] }

      # @!parse
      #   # @param items [Array<DodoPayments::Models::LicenseKey>]
      #   #
      #   def initialize(items:, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end

    LicenseKeyListResponse = DodoPayments::ArrayOf[-> { DodoPayments::Models::LicenseKeyListResponseItem }]
  end
end

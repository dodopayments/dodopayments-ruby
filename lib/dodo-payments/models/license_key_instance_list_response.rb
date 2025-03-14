# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseKeyInstanceListResponseItem < DodoPayments::BaseModel
      # @!attribute items
      #
      #   @return [Array<DodoPayments::Models::LicenseKeyInstance>]
      required :items, -> { DodoPayments::ArrayOf[DodoPayments::Models::LicenseKeyInstance] }

      # @!parse
      #   # @param items [Array<DodoPayments::Models::LicenseKeyInstance>]
      #   #
      #   def initialize(items:, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end

    LicenseKeyInstanceListResponse = DodoPayments::ArrayOf[-> { DodoPayments::Models::LicenseKeyInstanceListResponseItem }]
  end
end

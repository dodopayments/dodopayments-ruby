# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyInstanceListResponseItem < Dodopayments::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::LicenseKeyInstance>]
      required :items, -> { Dodopayments::ArrayOf[Dodopayments::Models::LicenseKeyInstance] }

      # @!parse
      #   # @param items [Array<Dodopayments::Models::LicenseKeyInstance>]
      #   #
      #   def initialize(items:, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end

    LicenseKeyInstanceListResponse = Dodopayments::ArrayOf[-> { Dodopayments::Models::LicenseKeyInstanceListResponseItem }]
  end
end

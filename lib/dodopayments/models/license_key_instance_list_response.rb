# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyInstanceListResponseItem < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::LicenseKeyInstance>]
      required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::LicenseKeyInstance] }

      # @!parse
      #   # @param items [Array<Dodopayments::Models::LicenseKeyInstance>]
      #   #
      #   def initialize(items:, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end

    LicenseKeyInstanceListResponse =
      Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::Models::LicenseKeyInstanceListResponseItem }]
  end
end

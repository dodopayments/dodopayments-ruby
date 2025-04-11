# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyDuration < Dodopayments::Internal::Type::BaseModel
      # @!attribute count
      #
      #   @return [Integer]
      required :count, Integer

      # @!attribute interval
      #
      #   @return [Symbol, Dodopayments::Models::TimeInterval]
      required :interval, enum: -> { Dodopayments::Models::TimeInterval }

      # @!parse
      #   # @param count [Integer]
      #   # @param interval [Symbol, Dodopayments::Models::TimeInterval]
      #   #
      #   def initialize(count:, interval:, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end

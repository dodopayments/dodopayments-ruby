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
      required :interval, enum: -> { Dodopayments::TimeInterval }

      # @!method initialize(count:, interval:)
      #   @param count [Integer]
      #   @param interval [Symbol, Dodopayments::Models::TimeInterval]
    end
  end
end

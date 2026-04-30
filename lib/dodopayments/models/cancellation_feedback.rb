# frozen_string_literal: true

module Dodopayments
  module Models
    module CancellationFeedback
      extend Dodopayments::Internal::Type::Enum

      TOO_EXPENSIVE = :too_expensive
      MISSING_FEATURES = :missing_features
      SWITCHED_SERVICE = :switched_service
      UNUSED = :unused
      CUSTOMER_SERVICE = :customer_service
      LOW_QUALITY = :low_quality
      TOO_COMPLEX = :too_complex
      OTHER = :other

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

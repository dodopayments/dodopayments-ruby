# frozen_string_literal: true

module Dodopayments
  module Models
    # Type of capability a `feature_flag` entitlement confers.
    module FeatureType
      extend Dodopayments::Internal::Type::Enum

      BOOLEAN = :boolean

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

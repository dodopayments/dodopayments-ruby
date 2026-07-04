# frozen_string_literal: true

module Dodopayments
  module Models
    class Feature < Dodopayments::Internal::Type::BaseModel
      # @!attribute feature_id
      #   Identifier of the capability this grant confers.
      #
      #   @return [String]
      required :feature_id, String

      # @!attribute feature_type
      #   Type of capability conferred.
      #
      #   @return [Symbol, Dodopayments::Models::FeatureType]
      required :feature_type, enum: -> { Dodopayments::FeatureType }

      # @!method initialize(feature_id:, feature_type:)
      #   Capability conferred by a `feature_flag` grant.
      #
      #   @param feature_id [String] Identifier of the capability this grant confers.
      #
      #   @param feature_type [Symbol, Dodopayments::Models::FeatureType] Type of capability conferred.
    end
  end
end

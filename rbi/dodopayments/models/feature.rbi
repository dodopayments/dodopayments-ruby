# typed: strong

module Dodopayments
  module Models
    class Feature < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Feature, Dodopayments::Internal::AnyHash)
        end

      # Identifier of the capability this grant confers.
      sig { returns(String) }
      attr_accessor :feature_id

      # Type of capability conferred.
      sig { returns(Dodopayments::FeatureType::TaggedSymbol) }
      attr_accessor :feature_type

      # Capability conferred by a `feature_flag` grant.
      sig do
        params(
          feature_id: String,
          feature_type: Dodopayments::FeatureType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the capability this grant confers.
        feature_id:,
        # Type of capability conferred.
        feature_type:
      )
      end

      sig do
        override.returns(
          {
            feature_id: String,
            feature_type: Dodopayments::FeatureType::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end

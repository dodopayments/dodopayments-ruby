# typed: strong

module Dodopayments
  module Models
    module EntitlementIntegrationType
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::EntitlementIntegrationType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DISCORD =
        T.let(:discord, Dodopayments::EntitlementIntegrationType::TaggedSymbol)
      TELEGRAM =
        T.let(:telegram, Dodopayments::EntitlementIntegrationType::TaggedSymbol)
      GITHUB =
        T.let(:github, Dodopayments::EntitlementIntegrationType::TaggedSymbol)
      FIGMA =
        T.let(:figma, Dodopayments::EntitlementIntegrationType::TaggedSymbol)
      FRAMER =
        T.let(:framer, Dodopayments::EntitlementIntegrationType::TaggedSymbol)
      NOTION =
        T.let(:notion, Dodopayments::EntitlementIntegrationType::TaggedSymbol)
      DIGITAL_FILES =
        T.let(
          :digital_files,
          Dodopayments::EntitlementIntegrationType::TaggedSymbol
        )
      LICENSE_KEY =
        T.let(
          :license_key,
          Dodopayments::EntitlementIntegrationType::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Dodopayments::EntitlementIntegrationType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

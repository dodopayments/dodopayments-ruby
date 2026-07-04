# typed: strong

module Dodopayments
  module Models
    # Metadata value can be a string, integer, number, or boolean
    module MetadataItem
      extend Dodopayments::Internal::Type::Union

      Variants = T.type_alias { T.any(String, Float, T::Boolean) }

      sig { override.returns(T::Array[Dodopayments::MetadataItem::Variants]) }
      def self.variants
      end
    end

    Metadata =
      T.let(
        Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem],
        Dodopayments::Internal::Type::Converter
      )
  end
end

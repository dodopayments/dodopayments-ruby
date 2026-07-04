# frozen_string_literal: true

module Dodopayments
  module Models
    # Metadata value can be a string, integer, number, or boolean
    module MetadataItem
      extend Dodopayments::Internal::Type::Union

      variant String

      variant Float

      variant Dodopayments::Internal::Type::Boolean

      # @!method self.variants
      #   @return [Array(String, Float, Boolean)]
    end

    # @type [Dodopayments::Internal::Type::Converter]
    Metadata = Dodopayments::Internal::Type::HashOf[union: -> { Dodopayments::MetadataItem }]
  end
end

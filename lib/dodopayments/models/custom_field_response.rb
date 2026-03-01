# frozen_string_literal: true

module Dodopayments
  module Models
    class CustomFieldResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute key
      #   Key matching the custom field definition
      #
      #   @return [String]
      required :key, String

      # @!attribute value
      #   Value provided by customer
      #
      #   @return [String]
      required :value, String

      # @!method initialize(key:, value:)
      #   Customer's response to a custom field
      #
      #   @param key [String] Key matching the custom field definition
      #
      #   @param value [String] Value provided by customer
    end
  end
end

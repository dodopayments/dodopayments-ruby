# frozen_string_literal: true

module Dodopayments
  module Models
    class MeterAggregation < Dodopayments::Internal::Type::BaseModel
      # @!attribute type
      #   Aggregation type for the meter
      #
      #   @return [Symbol, Dodopayments::Models::MeterAggregation::Type]
      required :type, enum: -> { Dodopayments::MeterAggregation::Type }

      # @!attribute key
      #   Required when type is not COUNT
      #
      #   @return [String, nil]
      optional :key, String, nil?: true

      # @!method initialize(type:, key: nil)
      #   @param type [Symbol, Dodopayments::Models::MeterAggregation::Type] Aggregation type for the meter
      #
      #   @param key [String, nil] Required when type is not COUNT

      # Aggregation type for the meter
      #
      # @see Dodopayments::Models::MeterAggregation#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        COUNT = :count
        SUM = :sum
        MAX = :max
        LAST = :last

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

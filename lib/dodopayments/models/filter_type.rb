# frozen_string_literal: true

module Dodopayments
  module Models
    # Filter clauses — either a flat list of `MeterFilterCondition`s or a list of
    # nested `MeterFilter`s. Up to 3 levels of nesting are accepted; the limit is
    # enforced at runtime.
    module FilterType
      extend Dodopayments::Internal::Type::Union

      # Array of filter conditions.
      variant -> { Dodopayments::Models::FilterType::MeterFilterConditionListArray }

      # Array of nested filters.
      variant -> { Dodopayments::Models::FilterType::MeterFilterArray }

      class MeterFilterConditionList < Dodopayments::Internal::Type::BaseModel
        # @!attribute key
        #   Filter key to apply
        #
        #   @return [String]
        required :key, String

        # @!attribute operator
        #   Filter operator
        #
        #   @return [Symbol, Dodopayments::Models::FilterOperator]
        required :operator, enum: -> { Dodopayments::FilterOperator }

        # @!attribute value
        #   Filter value - can be string, number, or boolean
        #
        #   @return [String, Float, Boolean]
        required :value, union: -> { Dodopayments::FilterType::MeterFilterConditionList::Value }

        # @!method initialize(key:, operator:, value:)
        #   @param key [String] Filter key to apply
        #
        #   @param operator [Symbol, Dodopayments::Models::FilterOperator] Filter operator
        #
        #   @param value [String, Float, Boolean] Filter value - can be string, number, or boolean

        # Filter value - can be string, number, or boolean
        #
        # @see Dodopayments::Models::FilterType::MeterFilterConditionList#value
        module Value
          extend Dodopayments::Internal::Type::Union

          variant String

          variant Float

          variant Dodopayments::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Float, Boolean)]
        end
      end

      # @!method self.variants
      #   @return [Array(Array<Dodopayments::Models::FilterType::MeterFilterConditionList>, Array<Dodopayments::Models::MeterFilter>)]

      # @type [Dodopayments::Internal::Type::Converter]
      MeterFilterConditionListArray =
        Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::FilterType::MeterFilterConditionList }]

      # @type [Dodopayments::Internal::Type::Converter]
      MeterFilterArray = Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::MeterFilter }]
    end
  end
end

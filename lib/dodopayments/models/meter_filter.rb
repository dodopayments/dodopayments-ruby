# frozen_string_literal: true

module Dodopayments
  module Models
    class MeterFilter < Dodopayments::Internal::Type::BaseModel
      # @!attribute clauses
      #   Filter clauses - can be direct conditions or nested filters (up to 3 levels
      #   deep)
      #
      #   @return [Dodopayments::Models::FilterType]
      required :clauses, union: -> { Dodopayments::FilterType }

      # @!attribute conjunction
      #   Logical conjunction to apply between clauses (and/or)
      #
      #   @return [Symbol, Dodopayments::Models::Conjunction]
      required :conjunction, enum: -> { Dodopayments::Conjunction }

      # @!method initialize(clauses:, conjunction:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::MeterFilter} for more details.
      #
      #   A filter structure that combines multiple conditions with logical conjunctions
      #   (AND/OR).
      #
      #   Supports up to 3 levels of nesting to create complex filter expressions. Each
      #   filter has a conjunction (and/or) and clauses that can be either direct
      #   conditions or nested filters.
      #
      #   @param clauses [Dodopayments::Models::FilterType] Filter clauses - can be direct conditions or nested filters (up to 3 levels deep
      #
      #   @param conjunction [Symbol, Dodopayments::Models::Conjunction] Logical conjunction to apply between clauses (and/or)
    end
  end
end

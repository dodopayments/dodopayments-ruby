# typed: strong

module Dodopayments
  module Models
    class MeterFilter < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::MeterFilter, Dodopayments::Internal::AnyHash)
        end

      # Filter clauses - can be direct conditions or nested filters (up to 3 levels
      # deep)
      sig { returns(Dodopayments::FilterType) }
      attr_accessor :clauses

      # Logical conjunction to apply between clauses (and/or)
      sig { returns(Dodopayments::Conjunction::OrSymbol) }
      attr_accessor :conjunction

      # A filter structure that combines multiple conditions with logical conjunctions
      # (AND/OR).
      #
      # Supports up to 3 levels of nesting to create complex filter expressions. Each
      # filter has a conjunction (and/or) and clauses that can be either direct
      # conditions or nested filters.
      sig do
        params(
          clauses: Dodopayments::FilterType,
          conjunction: Dodopayments::Conjunction::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter clauses - can be direct conditions or nested filters (up to 3 levels
        # deep)
        clauses:,
        # Logical conjunction to apply between clauses (and/or)
        conjunction:
      )
      end

      sig do
        override.returns(
          {
            clauses: Dodopayments::FilterType,
            conjunction: Dodopayments::Conjunction::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end

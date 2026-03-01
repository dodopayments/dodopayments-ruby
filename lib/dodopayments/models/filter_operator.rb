# frozen_string_literal: true

module Dodopayments
  module Models
    module FilterOperator
      extend Dodopayments::Internal::Type::Enum

      EQUALS = :equals
      NOT_EQUALS = :not_equals
      GREATER_THAN = :greater_than
      GREATER_THAN_OR_EQUALS = :greater_than_or_equals
      LESS_THAN = :less_than
      LESS_THAN_OR_EQUALS = :less_than_or_equals
      CONTAINS = :contains
      DOES_NOT_CONTAIN = :does_not_contain

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

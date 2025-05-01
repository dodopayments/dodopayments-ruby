# frozen_string_literal: true

module Dodopayments
  module Models
    # Represents the different categories of taxation applicable to various products
    # and services.
    module TaxCategory
      extend Dodopayments::Internal::Type::Enum

      DIGITAL_PRODUCTS = :digital_products
      SAAS = :saas
      E_BOOK = :e_book
      EDTECH = :edtech

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

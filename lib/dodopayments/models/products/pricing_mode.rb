# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      module PricingMode
        extend Dodopayments::Internal::Type::Enum

        BY_CURRENCY = :by_currency
        BY_COUNTRY = :by_country

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

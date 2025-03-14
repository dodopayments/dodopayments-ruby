# frozen_string_literal: true

module Dodopayments
  module Models
    # @abstract
    class DiscountType < Dodopayments::Enum
      PERCENTAGE = :percentage

      finalize!
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    module DiscountType
      extend Dodopayments::Enum

      PERCENTAGE = :percentage

      finalize!
    end
  end
end

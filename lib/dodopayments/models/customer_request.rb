# frozen_string_literal: true

module Dodopayments
  module Models
    # @abstract
    class CustomerRequest < Dodopayments::Union
      variant -> { Dodopayments::Models::AttachExistingCustomer }

      variant -> { Dodopayments::Models::CreateNewCustomer }

      # @!parse
      #   class << self
      #     # @return [Array(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)]
      #     def variants; end
      #   end
    end
  end
end

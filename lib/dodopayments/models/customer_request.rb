# frozen_string_literal: true

module Dodopayments
  module Models
    module CustomerRequest
      extend Dodopayments::Internal::Type::Union

      variant -> { Dodopayments::Models::AttachExistingCustomer }

      variant -> { Dodopayments::Models::CreateNewCustomer }

      # @!parse
      #   # @return [Array(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)]
      #   def self.variants; end
    end
  end
end

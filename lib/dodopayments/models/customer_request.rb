# frozen_string_literal: true

module Dodopayments
  module Models
    module CustomerRequest
      extend Dodopayments::Internal::Type::Union

      variant -> { Dodopayments::Models::AttachExistingCustomer }

      variant -> { Dodopayments::Models::CreateNewCustomer }

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)]
    end
  end
end

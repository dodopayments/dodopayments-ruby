# frozen_string_literal: true

module Dodopayments
  module Models
    module CustomerRequest
      extend Dodopayments::Internal::Type::Union

      variant -> { Dodopayments::AttachExistingCustomer }

      variant -> { Dodopayments::NewCustomer }

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer)]
    end
  end
end

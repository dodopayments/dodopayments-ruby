# frozen_string_literal: true

module Dodopayments
  module Models
    module CustomerRequest
      extend Dodopayments::Internal::Type::Union

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

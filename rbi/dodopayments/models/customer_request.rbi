# typed: strong

module Dodopayments
  module Models
    module CustomerRequest
      extend Dodopayments::Internal::Type::Union

      sig { override.returns([Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]) }
      def self.variants; end
    end
  end
end

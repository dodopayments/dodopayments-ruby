# typed: strong

module Dodopayments
  module Models
    module CustomerRequest
      extend Dodopayments::Internal::Type::Union

      Variants =
        type_template(:out) { {fixed: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)} }

      class << self
        sig { override.returns([Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]) }
        def variants
        end
      end
    end
  end
end

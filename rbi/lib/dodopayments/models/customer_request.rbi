# typed: strong

module Dodopayments
  module Models
    class CustomerRequest < Dodopayments::Union
      abstract!

      class << self
        sig { override.returns([Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]) }
        def variants
        end
      end
    end
  end
end

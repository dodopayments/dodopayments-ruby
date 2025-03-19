# typed: strong

module Dodopayments
  module Models
    class CustomerRequest < Dodopayments::Union
      abstract!

      Variants =
        type_template(:out) { {fixed: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)} }
    end
  end
end

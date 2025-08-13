# typed: strong

module Dodopayments
  module Models
    module CustomerRequest
      extend Dodopayments::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Dodopayments::AttachExistingCustomer, Dodopayments::NewCustomer)
        end

      sig do
        override.returns(T::Array[Dodopayments::CustomerRequest::Variants])
      end
      def self.variants
      end
    end
  end
end

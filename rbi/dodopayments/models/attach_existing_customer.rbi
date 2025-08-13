# typed: strong

module Dodopayments
  module Models
    class AttachExistingCustomer < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::AttachExistingCustomer,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { params(customer_id: String).returns(T.attached_class) }
      def self.new(customer_id:)
      end

      sig { override.returns({ customer_id: String }) }
      def to_hash
      end
    end
  end
end

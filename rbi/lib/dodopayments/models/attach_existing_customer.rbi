# typed: strong

module Dodopayments
  module Models
    class AttachExistingCustomer < Dodopayments::Internal::Type::BaseModel
      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { params(customer_id: String).returns(T.attached_class) }
      def self.new(customer_id:)
      end

      sig { override.returns({customer_id: String}) }
      def to_hash
      end
    end
  end
end

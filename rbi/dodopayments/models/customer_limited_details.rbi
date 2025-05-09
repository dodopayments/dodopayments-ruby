# typed: strong

module Dodopayments
  module Models
    class CustomerLimitedDetails < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      # Unique identifier for the customer
      sig { returns(String) }
      attr_accessor :customer_id

      # Email address of the customer
      sig { returns(String) }
      attr_accessor :email

      # Full name of the customer
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(customer_id: String, email: String, name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Unique identifier for the customer
        customer_id:,
        # Email address of the customer
        email:,
        # Full name of the customer
        name:
      )
      end

      sig do
        override.returns({ customer_id: String, email: String, name: String })
      end
      def to_hash
      end
    end
  end
end

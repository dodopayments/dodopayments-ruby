# typed: strong

module Dodopayments
  module Models
    class CustomerLimitedDetails < Dodopayments::BaseModel
      # Unique identifier for the customer
      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      # Email address of the customer
      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      # Full name of the customer
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { params(customer_id: String, email: String, name: String).returns(T.attached_class) }
      def self.new(customer_id:, email:, name:)
      end

      sig { override.returns({customer_id: String, email: String, name: String}) }
      def to_hash
      end
    end
  end
end

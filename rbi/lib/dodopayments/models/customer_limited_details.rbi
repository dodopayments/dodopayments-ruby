# typed: strong

module Dodopayments
  module Models
    class CustomerLimitedDetails < Dodopayments::Internal::Type::BaseModel
      # Unique identifier for the customer
      sig { returns(String) }
      attr_accessor :customer_id

      # Email address of the customer
      sig { returns(String) }
      attr_accessor :email

      # Full name of the customer
      sig { returns(String) }
      attr_accessor :name

      sig { params(customer_id: String, email: String, name: String).returns(T.attached_class) }
      def self.new(customer_id:, email:, name:); end

      sig { override.returns({customer_id: String, email: String, name: String}) }
      def to_hash; end
    end
  end
end

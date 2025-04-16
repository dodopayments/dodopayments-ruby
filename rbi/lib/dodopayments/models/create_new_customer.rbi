# typed: strong

module Dodopayments
  module Models
    class CreateNewCustomer < Dodopayments::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      # When false, the most recently created customer object with the given email is
      # used if exists. When true, a new customer object is always created False by
      # default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :create_new_customer

      sig { params(create_new_customer: T::Boolean).void }
      attr_writer :create_new_customer

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(email: String, name: String, create_new_customer: T::Boolean, phone_number: T.nilable(String))
          .returns(T.attached_class)
      end
      def self.new(email:, name:, create_new_customer: nil, phone_number: nil); end

      sig do
        override
          .returns({
                     email: String,
                     name: String,
                     create_new_customer: T::Boolean,
                     phone_number: T.nilable(String)
                   })
      end
      def to_hash; end
    end
  end
end

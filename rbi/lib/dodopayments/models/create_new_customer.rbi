# typed: strong

module Dodopayments
  module Models
    class CreateNewCustomer < Dodopayments::Internal::Type::BaseModel
      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # When false, the most recently created customer object with the given email is
      #   used if exists. When true, a new customer object is always created False by
      #   default
      sig { returns(T.nilable(T::Boolean)) }
      def create_new_customer
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def create_new_customer=(_)
      end

      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def phone_number=(_)
      end

      sig do
        params(email: String, name: String, create_new_customer: T::Boolean, phone_number: T.nilable(String))
          .returns(T.attached_class)
      end
      def self.new(email:, name:, create_new_customer: nil, phone_number: nil)
      end

      sig do
        override
          .returns({
                     email: String,
                     name: String,
                     create_new_customer: T::Boolean,
                     phone_number: T.nilable(String)
                   })
      end
      def to_hash
      end
    end
  end
end

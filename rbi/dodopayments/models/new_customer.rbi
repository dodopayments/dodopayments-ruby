# typed: strong

module Dodopayments
  module Models
    class NewCustomer < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::NewCustomer, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(
          email: String,
          name: String,
          phone_number: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(email:, name:, phone_number: nil)
      end

      sig do
        override.returns(
          { email: String, name: String, phone_number: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end

# typed: strong

module Dodopayments
  module Models
    class NewCustomer < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::NewCustomer, Dodopayments::Internal::AnyHash)
        end

      # Email is required for creating a new customer
      sig { returns(String) }
      attr_accessor :email

      # Optional full name of the customer. If provided during session creation, it is
      # persisted and becomes immutable for the session. If omitted here, it can be
      # provided later via the confirm API.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(
          email: String,
          name: T.nilable(String),
          phone_number: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Email is required for creating a new customer
        email:,
        # Optional full name of the customer. If provided during session creation, it is
        # persisted and becomes immutable for the session. If omitted here, it can be
        # provided later via the confirm API.
        name: nil,
        phone_number: nil
      )
      end

      sig do
        override.returns(
          {
            email: String,
            name: T.nilable(String),
            phone_number: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

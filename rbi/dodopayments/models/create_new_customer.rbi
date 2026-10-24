# typed: strong

module Dodopayments
  module Models
    class CreateNewCustomer < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreateNewCustomer,
            Dodopayments::Internal::AnyHash
          )
        end

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

      # The language of the customer emails, a code from `GET /locales`. A value
      # replaces the stored language of the customer, also for an existing customer.
      # Send a value only to change that language on purpose. With no value, the stored
      # language stays.
      sig { returns(T.nilable(Dodopayments::Locale::OrSymbol)) }
      attr_accessor :preferred_locale

      sig do
        params(
          email: String,
          name: String,
          create_new_customer: T::Boolean,
          phone_number: T.nilable(String),
          preferred_locale: T.nilable(Dodopayments::Locale::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        email:,
        name:,
        # When false, the most recently created customer object with the given email is
        # used if exists. When true, a new customer object is always created False by
        # default
        create_new_customer: nil,
        phone_number: nil,
        # The language of the customer emails, a code from `GET /locales`. A value
        # replaces the stored language of the customer, also for an existing customer.
        # Send a value only to change that language on purpose. With no value, the stored
        # language stays.
        preferred_locale: nil
      )
      end

      sig do
        override.returns(
          {
            email: String,
            name: String,
            create_new_customer: T::Boolean,
            phone_number: T.nilable(String),
            preferred_locale: T.nilable(Dodopayments::Locale::OrSymbol)
          }
        )
      end
      def to_hash
      end
    end
  end
end

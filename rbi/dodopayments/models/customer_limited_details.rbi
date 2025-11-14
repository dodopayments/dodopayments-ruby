# typed: strong

module Dodopayments
  module Models
    class CustomerLimitedDetails < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerLimitedDetails,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique identifier for the customer
      sig { returns(String) }
      attr_accessor :customer_id

      # Email address of the customer
      sig { returns(String) }
      attr_accessor :email

      # Full name of the customer
      sig { returns(String) }
      attr_accessor :name

      # Additional metadata associated with the customer
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # Phone number of the customer
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(
          customer_id: String,
          email: String,
          name: String,
          metadata: T::Hash[Symbol, String],
          phone_number: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the customer
        customer_id:,
        # Email address of the customer
        email:,
        # Full name of the customer
        name:,
        # Additional metadata associated with the customer
        metadata: nil,
        # Phone number of the customer
        phone_number: nil
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            email: String,
            name: String,
            metadata: T::Hash[Symbol, String],
            phone_number: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

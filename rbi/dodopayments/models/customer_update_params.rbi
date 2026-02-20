# typed: strong

module Dodopayments
  module Models
    class CustomerUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Additional metadata for the customer
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(
          email: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          name: T.nilable(String),
          phone_number: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        email: nil,
        # Additional metadata for the customer
        metadata: nil,
        name: nil,
        phone_number: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            name: T.nilable(String),
            phone_number: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

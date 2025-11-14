# typed: strong

module Dodopayments
  module Models
    class CustomerCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      # Additional metadata for the customer
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(
          email: String,
          name: String,
          metadata: T::Hash[Symbol, String],
          phone_number: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        email:,
        name:,
        # Additional metadata for the customer
        metadata: nil,
        phone_number: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            name: String,
            metadata: T::Hash[Symbol, String],
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

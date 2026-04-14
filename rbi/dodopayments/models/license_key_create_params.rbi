# typed: strong

module Dodopayments
  module Models
    class LicenseKeyCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::LicenseKeyCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The customer this license key belongs to.
      sig { returns(String) }
      attr_accessor :customer_id

      # The license key string to import.
      sig { returns(String) }
      attr_accessor :key

      # The product this license key is for.
      sig { returns(String) }
      attr_accessor :product_id

      # Maximum number of activations allowed. Null means unlimited.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :activations_limit

      # Expiration timestamp. Null means the key never expires.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig do
        params(
          customer_id: String,
          key: String,
          product_id: String,
          activations_limit: T.nilable(Integer),
          expires_at: T.nilable(Time),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The customer this license key belongs to.
        customer_id:,
        # The license key string to import.
        key:,
        # The product this license key is for.
        product_id:,
        # Maximum number of activations allowed. Null means unlimited.
        activations_limit: nil,
        # Expiration timestamp. Null means the key never expires.
        expires_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            key: String,
            product_id: String,
            activations_limit: T.nilable(Integer),
            expires_at: T.nilable(Time),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

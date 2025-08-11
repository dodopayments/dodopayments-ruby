# typed: strong

module Dodopayments
  module Models
    class LicenseKey < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::LicenseKey, Dodopayments::Internal::AnyHash)
        end

      # The unique identifier of the license key.
      sig { returns(String) }
      attr_accessor :id

      # The unique identifier of the business associated with the license key.
      sig { returns(String) }
      attr_accessor :business_id

      # The timestamp indicating when the license key was created, in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The unique identifier of the customer associated with the license key.
      sig { returns(String) }
      attr_accessor :customer_id

      # The current number of instances activated for this license key.
      sig { returns(Integer) }
      attr_accessor :instances_count

      # The license key string.
      sig { returns(String) }
      attr_accessor :key

      # The unique identifier of the payment associated with the license key.
      sig { returns(String) }
      attr_accessor :payment_id

      # The unique identifier of the product associated with the license key.
      sig { returns(String) }
      attr_accessor :product_id

      # The current status of the license key (e.g., active, inactive, expired).
      sig { returns(Dodopayments::LicenseKeyStatus::OrSymbol) }
      attr_accessor :status

      # The maximum number of activations allowed for this license key.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :activations_limit

      # The timestamp indicating when the license key expires, in UTC.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # The unique identifier of the subscription associated with the license key, if
      # any.
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          customer_id: String,
          instances_count: Integer,
          key: String,
          payment_id: String,
          product_id: String,
          status: Dodopayments::LicenseKeyStatus::OrSymbol,
          activations_limit: T.nilable(Integer),
          expires_at: T.nilable(Time),
          subscription_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the license key.
        id:,
        # The unique identifier of the business associated with the license key.
        business_id:,
        # The timestamp indicating when the license key was created, in UTC.
        created_at:,
        # The unique identifier of the customer associated with the license key.
        customer_id:,
        # The current number of instances activated for this license key.
        instances_count:,
        # The license key string.
        key:,
        # The unique identifier of the payment associated with the license key.
        payment_id:,
        # The unique identifier of the product associated with the license key.
        product_id:,
        # The current status of the license key (e.g., active, inactive, expired).
        status:,
        # The maximum number of activations allowed for this license key.
        activations_limit: nil,
        # The timestamp indicating when the license key expires, in UTC.
        expires_at: nil,
        # The unique identifier of the subscription associated with the license key, if
        # any.
        subscription_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_id: String,
            created_at: Time,
            customer_id: String,
            instances_count: Integer,
            key: String,
            payment_id: String,
            product_id: String,
            status: Dodopayments::LicenseKeyStatus::OrSymbol,
            activations_limit: T.nilable(Integer),
            expires_at: T.nilable(Time),
            subscription_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

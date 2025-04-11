# typed: strong

module Dodopayments
  module Models
    class LicenseKey < Dodopayments::Internal::Type::BaseModel
      # The unique identifier of the license key.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The unique identifier of the business associated with the license key.
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # The timestamp indicating when the license key was created, in UTC.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The unique identifier of the customer associated with the license key.
      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      # The current number of instances activated for this license key.
      sig { returns(Integer) }
      def instances_count
      end

      sig { params(_: Integer).returns(Integer) }
      def instances_count=(_)
      end

      # The license key string.
      sig { returns(String) }
      def key
      end

      sig { params(_: String).returns(String) }
      def key=(_)
      end

      # The unique identifier of the payment associated with the license key.
      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      # The unique identifier of the product associated with the license key.
      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      sig { returns(Dodopayments::Models::LicenseKeyStatus::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Dodopayments::Models::LicenseKeyStatus::TaggedSymbol)
          .returns(Dodopayments::Models::LicenseKeyStatus::TaggedSymbol)
      end
      def status=(_)
      end

      # The maximum number of activations allowed for this license key.
      sig { returns(T.nilable(Integer)) }
      def activations_limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def activations_limit=(_)
      end

      # The timestamp indicating when the license key expires, in UTC.
      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def expires_at=(_)
      end

      # The unique identifier of the subscription associated with the license key, if
      #   any.
      sig { returns(T.nilable(String)) }
      def subscription_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def subscription_id=(_)
      end

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
          status: Dodopayments::Models::LicenseKeyStatus::TaggedSymbol,
          activations_limit: T.nilable(Integer),
          expires_at: T.nilable(Time),
          subscription_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        business_id:,
        created_at:,
        customer_id:,
        instances_count:,
        key:,
        payment_id:,
        product_id:,
        status:,
        activations_limit: nil,
        expires_at: nil,
        subscription_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              business_id: String,
              created_at: Time,
              customer_id: String,
              instances_count: Integer,
              key: String,
              payment_id: String,
              product_id: String,
              status: Dodopayments::Models::LicenseKeyStatus::TaggedSymbol,
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

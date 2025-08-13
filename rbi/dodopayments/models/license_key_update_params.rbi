# typed: strong

module Dodopayments
  module Models
    class LicenseKeyUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::LicenseKeyUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The updated activation limit for the license key. Use `null` to remove the
      # limit, or omit this field to leave it unchanged.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :activations_limit

      # Indicates whether the license key should be disabled. A value of `true` disables
      # the key, while `false` enables it. Omit this field to leave it unchanged.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disabled

      # The updated expiration timestamp for the license key in UTC. Use `null` to
      # remove the expiration date, or omit this field to leave it unchanged.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig do
        params(
          activations_limit: T.nilable(Integer),
          disabled: T.nilable(T::Boolean),
          expires_at: T.nilable(Time),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The updated activation limit for the license key. Use `null` to remove the
        # limit, or omit this field to leave it unchanged.
        activations_limit: nil,
        # Indicates whether the license key should be disabled. A value of `true` disables
        # the key, while `false` enables it. Omit this field to leave it unchanged.
        disabled: nil,
        # The updated expiration timestamp for the license key in UTC. Use `null` to
        # remove the expiration date, or omit this field to leave it unchanged.
        expires_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            activations_limit: T.nilable(Integer),
            disabled: T.nilable(T::Boolean),
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

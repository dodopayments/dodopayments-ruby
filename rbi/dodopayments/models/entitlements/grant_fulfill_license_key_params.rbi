# typed: strong

module Dodopayments
  module Models
    module Entitlements
      class GrantFulfillLicenseKeyParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::GrantFulfillLicenseKeyParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :grant_id

        # The license key value to deliver to the customer.
        sig { returns(String) }
        attr_accessor :key

        # Per-key activation limit. Defaults to the entitlement's license-key
        # configuration.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :activations_limit

        # When the key expires. Defaults to the duration in the entitlement's license-key
        # configuration.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        sig do
          params(
            grant_id: String,
            key: String,
            activations_limit: T.nilable(Integer),
            expires_at: T.nilable(Time),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          grant_id:,
          # The license key value to deliver to the customer.
          key:,
          # Per-key activation limit. Defaults to the entitlement's license-key
          # configuration.
          activations_limit: nil,
          # When the key expires. Defaults to the duration in the entitlement's license-key
          # configuration.
          expires_at: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              grant_id: String,
              key: String,
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
end

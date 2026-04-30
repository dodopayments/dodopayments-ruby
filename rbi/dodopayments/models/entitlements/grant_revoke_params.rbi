# typed: strong

module Dodopayments
  module Models
    module Entitlements
      class GrantRevokeParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::GrantRevokeParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :grant_id

        sig do
          params(
            id: String,
            grant_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, grant_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              grant_id: String,
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

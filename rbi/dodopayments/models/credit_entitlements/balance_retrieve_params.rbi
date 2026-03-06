# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class BalanceRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::BalanceRetrieveParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          params(
            credit_entitlement_id: String,
            customer_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(credit_entitlement_id:, customer_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              customer_id: String,
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

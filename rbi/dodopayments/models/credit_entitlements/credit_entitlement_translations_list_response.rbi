# typed: strong

module Dodopayments
  module Models
    CreditEntitlementTranslationsListResponse =
      CreditEntitlements::CreditEntitlementTranslationsListResponse

    module CreditEntitlements
      class CreditEntitlementTranslationsListResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::CreditEntitlementTranslationsListResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Dodopayments::CreditEntitlements::CreditEntitlementTranslation
            ]
          )
        end
        attr_accessor :items

        # The translations of a credit entitlement.
        sig do
          params(
            items:
              T::Array[
                Dodopayments::CreditEntitlements::CreditEntitlementTranslation::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[
                  Dodopayments::CreditEntitlements::CreditEntitlementTranslation
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

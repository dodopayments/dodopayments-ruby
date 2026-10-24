# typed: strong

module Dodopayments
  module Models
    EntitlementTranslationsListResponse =
      Entitlements::EntitlementTranslationsListResponse

    module Entitlements
      class EntitlementTranslationsListResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::EntitlementTranslationsListResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Dodopayments::Entitlements::EntitlementTranslation])
        end
        attr_accessor :items

        # The translations of an entitlement.
        sig do
          params(
            items:
              T::Array[
                Dodopayments::Entitlements::EntitlementTranslation::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[Dodopayments::Entitlements::EntitlementTranslation]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

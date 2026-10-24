# typed: strong

module Dodopayments
  module Models
    CreditEntitlementTranslation =
      CreditEntitlements::CreditEntitlementTranslation

    module CreditEntitlements
      class CreditEntitlementTranslation < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::CreditEntitlementTranslation,
              Dodopayments::Internal::AnyHash
            )
          end

        # The locale of the translation.
        sig { returns(Dodopayments::Locale::TaggedSymbol) }
        attr_accessor :locale

        # The time of the last change.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The translated name. `null` shows that the name has no translation.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The translated unit. `null` shows that the unit has no translation.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit

        # The translation of a credit entitlement in one locale.
        sig do
          params(
            locale: Dodopayments::Locale::OrSymbol,
            updated_at: Time,
            name: T.nilable(String),
            unit: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The locale of the translation.
          locale:,
          # The time of the last change.
          updated_at:,
          # The translated name. `null` shows that the name has no translation.
          name: nil,
          # The translated unit. `null` shows that the unit has no translation.
          unit: nil
        )
        end

        sig do
          override.returns(
            {
              locale: Dodopayments::Locale::TaggedSymbol,
              updated_at: Time,
              name: T.nilable(String),
              unit: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

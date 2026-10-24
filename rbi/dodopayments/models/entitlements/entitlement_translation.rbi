# typed: strong

module Dodopayments
  module Models
    EntitlementTranslation = Entitlements::EntitlementTranslation

    module Entitlements
      class EntitlementTranslation < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::EntitlementTranslation,
              Dodopayments::Internal::AnyHash
            )
          end

        # The locale of the translation.
        sig { returns(Dodopayments::Locale::TaggedSymbol) }
        attr_accessor :locale

        # The time of the last change.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The translated activation message of a `license_key` entitlement.
        sig { returns(T.nilable(String)) }
        attr_accessor :activation_message

        # The translated description. `null` shows that the description has no
        # translation.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The translated delivery instructions of a `digital_files` entitlement.
        sig { returns(T.nilable(String)) }
        attr_accessor :instructions

        # The translated name. `null` shows that the name has no translation.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The translation of an entitlement in one locale.
        sig do
          params(
            locale: Dodopayments::Locale::OrSymbol,
            updated_at: Time,
            activation_message: T.nilable(String),
            description: T.nilable(String),
            instructions: T.nilable(String),
            name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The locale of the translation.
          locale:,
          # The time of the last change.
          updated_at:,
          # The translated activation message of a `license_key` entitlement.
          activation_message: nil,
          # The translated description. `null` shows that the description has no
          # translation.
          description: nil,
          # The translated delivery instructions of a `digital_files` entitlement.
          instructions: nil,
          # The translated name. `null` shows that the name has no translation.
          name: nil
        )
        end

        sig do
          override.returns(
            {
              locale: Dodopayments::Locale::TaggedSymbol,
              updated_at: Time,
              activation_message: T.nilable(String),
              description: T.nilable(String),
              instructions: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

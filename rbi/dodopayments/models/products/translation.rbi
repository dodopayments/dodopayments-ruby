# typed: strong

module Dodopayments
  module Models
    module Products
      class Translation < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::Translation,
              Dodopayments::Internal::AnyHash
            )
          end

        # The locale of the translation.
        sig { returns(Dodopayments::Locale::TaggedSymbol) }
        attr_accessor :locale

        # The time of the last change.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The translated description. `null` shows that the description has no
        # translation.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The translated name. `null` shows that the name has no translation.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The translation of a product, an add-on, a product collection or a meter in one
        # locale.
        sig do
          params(
            locale: Dodopayments::Locale::OrSymbol,
            updated_at: Time,
            description: T.nilable(String),
            name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The locale of the translation.
          locale:,
          # The time of the last change.
          updated_at:,
          # The translated description. `null` shows that the description has no
          # translation.
          description: nil,
          # The translated name. `null` shows that the name has no translation.
          name: nil
        )
        end

        sig do
          override.returns(
            {
              locale: Dodopayments::Locale::TaggedSymbol,
              updated_at: Time,
              description: T.nilable(String),
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

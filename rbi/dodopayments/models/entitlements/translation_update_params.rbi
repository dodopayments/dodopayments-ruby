# typed: strong

module Dodopayments
  module Models
    module Entitlements
      class TranslationUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::TranslationUpdateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # A locale that the checkout and the customer portal can show.
        #
        # The codes are a copy of the checkout locales. `GET /locales` lists them.
        sig { returns(Dodopayments::Locale::OrSymbol) }
        attr_accessor :locale

        # The translated activation message. Only a `license_key` entitlement has it.
        sig { returns(T.nilable(String)) }
        attr_accessor :activation_message

        # The translated description.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The translated delivery instructions. Only a `digital_files` entitlement has
        # them.
        sig { returns(T.nilable(String)) }
        attr_accessor :instructions

        # The translated name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            id: String,
            locale: Dodopayments::Locale::OrSymbol,
            activation_message: T.nilable(String),
            description: T.nilable(String),
            instructions: T.nilable(String),
            name: T.nilable(String),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # A locale that the checkout and the customer portal can show.
          #
          # The codes are a copy of the checkout locales. `GET /locales` lists them.
          locale:,
          # The translated activation message. Only a `license_key` entitlement has it.
          activation_message: nil,
          # The translated description.
          description: nil,
          # The translated delivery instructions. Only a `digital_files` entitlement has
          # them.
          instructions: nil,
          # The translated name.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              locale: Dodopayments::Locale::OrSymbol,
              activation_message: T.nilable(String),
              description: T.nilable(String),
              instructions: T.nilable(String),
              name: T.nilable(String),
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

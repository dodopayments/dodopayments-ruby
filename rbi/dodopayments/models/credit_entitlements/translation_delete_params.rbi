# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class TranslationDeleteParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::TranslationDeleteParams,
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

        sig do
          params(
            id: String,
            locale: Dodopayments::Locale::OrSymbol,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # A locale that the checkout and the customer portal can show.
          #
          # The codes are a copy of the checkout locales. `GET /locales` lists them.
          locale:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              locale: Dodopayments::Locale::OrSymbol,
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

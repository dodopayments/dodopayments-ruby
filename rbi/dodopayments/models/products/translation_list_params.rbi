# typed: strong

module Dodopayments
  module Models
    module Products
      class TranslationListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::TranslationListParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Returns only these locales, for example `?locale=fr&locale=de`. With no value,
        # the response has all the locales.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :locale

        sig { params(locale: T::Array[String]).void }
        attr_writer :locale

        sig do
          params(
            id: String,
            locale: T::Array[String],
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Returns only these locales, for example `?locale=fr&locale=de`. With no value,
          # the response has all the locales.
          locale: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              locale: T::Array[String],
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

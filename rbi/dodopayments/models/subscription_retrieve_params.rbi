# typed: strong

module Dodopayments
  module Models
    class SubscriptionRetrieveParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionRetrieveParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :subscription_id

      # Shows the translated name, description and unit of the catalog entities in this
      # locale. The value must be a code from `GET /locales`, for example `fr`. A field
      # with no translation, an unknown code, or no code shows the base text.
      #
      # Do not send a text from a localized response back in a create or update request.
      # The base text then changes to the translated text.
      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { params(locale: String).void }
      attr_writer :locale

      sig do
        params(
          subscription_id: String,
          locale: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        subscription_id:,
        # Shows the translated name, description and unit of the catalog entities in this
        # locale. The value must be a code from `GET /locales`, for example `fr`. A field
        # with no translation, an unknown code, or no code shows the base text.
        #
        # Do not send a text from a localized response back in a create or update request.
        # The base text then changes to the translated text.
        locale: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            locale: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

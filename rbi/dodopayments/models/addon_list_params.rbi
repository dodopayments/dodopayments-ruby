# typed: strong

module Dodopayments
  module Models
    class AddonListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dodopayments::AddonListParams, Dodopayments::Internal::AnyHash)
        end

      # List archived addons. The default is false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archived

      sig { params(archived: T::Boolean).void }
      attr_writer :archived

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

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          archived: T::Boolean,
          locale: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List archived addons. The default is false.
        archived: nil,
        # Shows the translated name, description and unit of the catalog entities in this
        # locale. The value must be a code from `GET /locales`, for example `fr`. A field
        # with no translation, an unknown code, or no code shows the base text.
        #
        # Do not send a text from a localized response back in a create or update request.
        # The base text then changes to the translated text.
        locale: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            archived: T::Boolean,
            locale: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

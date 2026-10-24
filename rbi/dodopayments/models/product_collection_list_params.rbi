# typed: strong

module Dodopayments
  module Models
    class ProductCollectionListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollectionListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # List archived collections
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archived

      sig { params(archived: T::Boolean).void }
      attr_writer :archived

      # Filter by Brand id
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

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
          brand_id: String,
          locale: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List archived collections
        archived: nil,
        # Filter by Brand id
        brand_id: nil,
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
            brand_id: String,
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

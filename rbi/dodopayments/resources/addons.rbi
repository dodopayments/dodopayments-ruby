# typed: strong

module Dodopayments
  module Resources
    class Addons
      sig { returns(Dodopayments::Resources::Addons::Translations) }
      attr_reader :translations

      sig do
        params(
          currency: Dodopayments::Currency::OrSymbol,
          name: String,
          price: Integer,
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          description: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::AddonResponse)
      end
      def create(
        # The currency of the Addon
        currency:,
        # Name of the Addon
        name:,
        # Amount of the addon
        price:,
        # Tax category applied to this Addon
        tax_category:,
        # Optional description of the Addon
        description: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          locale: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::AddonResponse)
      end
      def retrieve(
        # Addon Id
        id,
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
        params(
          id: String,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          image_id: T.nilable(String),
          name: T.nilable(String),
          price: T.nilable(Integer),
          tax_category: T.nilable(Dodopayments::TaxCategory::OrSymbol),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::AddonResponse)
      end
      def update(
        # Addon Id
        id,
        # The currency of the Addon
        currency: nil,
        # Description of the Addon, optional and must be at most 1000 characters.
        description: nil,
        # Addon image id after its uploaded to S3. Pass `null` to remove the existing
        # image, omit to keep it unchanged.
        image_id: nil,
        # Name of the Addon, optional and must be at most 100 characters.
        name: nil,
        # Amount of the addon
        price: nil,
        # Tax category of the Addon.
        tax_category: nil,
        request_options: {}
      )
      end

      sig do
        params(
          archived: T::Boolean,
          locale: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::AddonResponse
          ]
        )
      end
      def list(
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
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Addon Id
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def unarchive(
        # Addon Id
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::AddonUpdateImagesResponse)
      end
      def update_images(
        # Addon Id
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

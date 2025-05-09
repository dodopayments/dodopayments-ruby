# typed: strong

module Dodopayments
  module Resources
    class Addons
      sig do
        params(
          currency: Dodopayments::Models::Currency::OrSymbol,
          name: String,
          price: Integer,
          tax_category: Dodopayments::Models::TaxCategory::OrSymbol,
          description: T.nilable(String),
          request_options: Dodopayments::RequestOpts
        )
          .returns(Dodopayments::Models::AddonResponse)
      end
      def create(
        currency:,
        # Name of the Addon
        name:,
        # Amount of the addon
        price:,
        # Represents the different categories of taxation applicable to various products
        # and services.
        tax_category:,
        # Optional description of the Addon
        description: nil,
        request_options: {}
      ); end
      sig do
        params(id: String, request_options: Dodopayments::RequestOpts).returns(Dodopayments::Models::AddonResponse)
      end
      def retrieve(
        # Addon Id
        id,
        request_options: {}
      ); end
      sig do
        params(
          id: String,
          currency: T.nilable(Dodopayments::Models::Currency::OrSymbol),
          description: T.nilable(String),
          image_id: T.nilable(String),
          name: T.nilable(String),
          price: T.nilable(Integer),
          tax_category: T.nilable(Dodopayments::Models::TaxCategory::OrSymbol),
          request_options: Dodopayments::RequestOpts
        )
          .returns(Dodopayments::Models::AddonResponse)
      end
      def update(
        # Addon Id
        id,
        currency: nil,
        # Description of the Addon, optional and must be at most 1000 characters.
        description: nil,
        # Addon image id after its uploaded to S3
        image_id: nil,
        # Name of the Addon, optional and must be at most 100 characters.
        name: nil,
        # Amount of the addon
        price: nil,
        # Represents the different categories of taxation applicable to various products
        # and services.
        tax_category: nil,
        request_options: {}
      ); end
      sig do
        params(
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: Dodopayments::RequestOpts
        )
          .returns(Dodopayments::Internal::DefaultPageNumberPagination[Dodopayments::Models::AddonResponse])
      end
      def list(
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      ); end
      sig do
        params(id: String, request_options: Dodopayments::RequestOpts)
          .returns(Dodopayments::Models::AddonUpdateImagesResponse)
      end
      def update_images(
        # Addon Id
        id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end

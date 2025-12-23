# typed: strong

module Dodopayments
  module Resources
    class Products
      class ShortLinks
        # Gives a Short Checkout URL with custom slug for a product. Uses a Static
        # Checkout URL under the hood.
        sig do
          params(
            id: String,
            slug: String,
            static_checkout_params: T.nilable(T::Hash[Symbol, String]),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Models::Products::ShortLinkCreateResponse)
        end
        def create(
          # Product Id
          id,
          # Slug for the short link.
          slug:,
          # Static Checkout URL parameters to apply to the resulting short URL.
          static_checkout_params: nil,
          request_options: {}
        )
        end

        # Lists all short links created by the business.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            product_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Internal::DefaultPageNumberPagination[
              Dodopayments::Models::Products::ShortLinkListResponse
            ]
          )
        end
        def list(
          # Page number default is 0
          page_number: nil,
          # Page size default is 10 max is 100
          page_size: nil,
          # Filter by product ID
          product_id: nil,
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
end

# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::ShortLinks#list
      class ShortLinkListResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute created_at
        #   When the short url was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute full_url
        #   Full URL the short url redirects to
        #
        #   @return [String]
        required :full_url, String

        # @!attribute product_id
        #   Product ID associated with the short link
        #
        #   @return [String]
        required :product_id, String

        # @!attribute short_url
        #   Short URL
        #
        #   @return [String]
        required :short_url, String

        # @!method initialize(created_at:, full_url:, product_id:, short_url:)
        #   @param created_at [Time] When the short url was created
        #
        #   @param full_url [String] Full URL the short url redirects to
        #
        #   @param product_id [String] Product ID associated with the short link
        #
        #   @param short_url [String] Short URL
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::ShortLinks#create
      class ShortLinkCreateResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute full_url
        #   Full URL.
        #
        #   @return [String]
        required :full_url, String

        # @!attribute short_url
        #   Short URL.
        #
        #   @return [String]
        required :short_url, String

        # @!method initialize(full_url:, short_url:)
        #   @param full_url [String] Full URL.
        #
        #   @param short_url [String] Short URL.
      end
    end
  end
end

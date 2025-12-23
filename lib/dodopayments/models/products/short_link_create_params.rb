# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::ShortLinks#create
      class ShortLinkCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute slug
        #   Slug for the short link.
        #
        #   @return [String]
        required :slug, String

        # @!attribute static_checkout_params
        #   Static Checkout URL parameters to apply to the resulting short URL.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :static_checkout_params, Dodopayments::Internal::Type::HashOf[String], nil?: true

        # @!method initialize(slug:, static_checkout_params: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Products::ShortLinkCreateParams} for more details.
        #
        #   @param slug [String] Slug for the short link.
        #
        #   @param static_checkout_params [Hash{Symbol=>String}, nil] Static Checkout URL parameters to apply to the resulting
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

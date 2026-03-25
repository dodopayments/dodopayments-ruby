# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::CustomerPortal#create
      class CustomerPortalCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute return_url
        #   Optional return URL for this session. Overrides the business-level default. This
        #   URL will be shown as a "Return to {business}" back button in the portal.
        #
        #   @return [String, nil]
        optional :return_url, String

        # @!attribute send_email
        #   If true, will send link to user.
        #
        #   @return [Boolean, nil]
        optional :send_email, Dodopayments::Internal::Type::Boolean

        # @!method initialize(customer_id:, return_url: nil, send_email: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Customers::CustomerPortalCreateParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param return_url [String] Optional return URL for this session. Overrides the business-level default.
        #
        #   @param send_email [Boolean] If true, will send link to user.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

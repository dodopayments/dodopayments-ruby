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

        # @!attribute send_email
        #   If true, will send link to user.
        #
        #   @return [Boolean, nil]
        optional :send_email, Dodopayments::Internal::Type::Boolean

        # @!method initialize(customer_id:, send_email: nil, request_options: {})
        #   @param customer_id [String]
        #
        #   @param send_email [Boolean] If true, will send link to user.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

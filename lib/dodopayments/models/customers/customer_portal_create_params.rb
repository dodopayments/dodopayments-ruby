# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::CustomerPortal#create
      class CustomerPortalCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute send_email
        #   If true, will send link to user.
        #
        #   @return [Boolean, nil]
        optional :send_email, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(send_email: nil, request_options: {})
        #   @param send_email [Boolean, nil]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

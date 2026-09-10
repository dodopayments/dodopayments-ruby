# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::Emails#retrieve_body
      class EmailRetrieveBodyParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute email_log_id
        #
        #   @return [String]
        required :email_log_id, String

        # @!method initialize(customer_id:, email_log_id:, request_options: {})
        #   @param customer_id [String]
        #   @param email_log_id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

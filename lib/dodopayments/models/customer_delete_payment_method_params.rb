# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#delete_payment_method
    class CustomerDeletePaymentMethodParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute payment_method_id
      #
      #   @return [String]
      required :payment_method_id, String

      # @!method initialize(customer_id:, payment_method_id:, request_options: {})
      #   @param customer_id [String]
      #   @param payment_method_id [String]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

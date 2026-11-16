# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#retrieve_payment_methods
    class CustomerRetrievePaymentMethodsParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute billing_country
      #   ISO country code alpha2 variant
      #
      #   @return [Symbol, Dodopayments::Models::CountryCode, nil]
      optional :billing_country, enum: -> { Dodopayments::CountryCode }

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }

      # @!method initialize(customer_id:, billing_country: nil, currency: nil, request_options: {})
      #   @param customer_id [String]
      #
      #   @param billing_country [Symbol, Dodopayments::Models::CountryCode] ISO country code alpha2 variant
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

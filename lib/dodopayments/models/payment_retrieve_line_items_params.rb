# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#retrieve_line_items
    class PaymentRetrieveLineItemsParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute currency
      #   The currency of the amounts. It must be the currency that the customer paid in.
      #   Without it, the amounts are in the settlement currency.
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }

      # @!method initialize(payment_id:, currency: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::PaymentRetrieveLineItemsParams} for more details.
      #
      #   @param payment_id [String]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency] The currency of the amounts. It must be the currency that the customer paid in.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

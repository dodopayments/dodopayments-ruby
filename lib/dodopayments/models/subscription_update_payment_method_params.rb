# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update_payment_method
    class SubscriptionUpdatePaymentMethodParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute type
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Type]
      required :type, enum: -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::Type }

      # @!attribute return_url
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute payment_method_id
      #
      #   @return [String]
      required :payment_method_id, String

      # @!method initialize(type:, payment_method_id:, return_url: nil, request_options: {})
      #   @param type [Symbol, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Type]
      #   @param payment_method_id [String]
      #   @param return_url [String, nil]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module Type
        extend Dodopayments::Internal::Type::Enum

        EXISTING = :existing

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

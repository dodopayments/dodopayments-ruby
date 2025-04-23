# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#change_plan
    class SubscriptionChangePlanParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute product_id
      #   Unique identifier of the product to subscribe to
      #
      #   @return [String]
      required :product_id, String

      # @!attribute proration_billing_mode
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode]
      required :proration_billing_mode,
               enum: -> { Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode }

      # @!attribute quantity
      #   Number of units to subscribe for. Must be at least 1.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!method initialize(product_id:, proration_billing_mode:, quantity:, request_options: {})
      #   @param product_id [String]
      #   @param proration_billing_mode [Symbol, Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode]
      #   @param quantity [Integer]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module ProrationBillingMode
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

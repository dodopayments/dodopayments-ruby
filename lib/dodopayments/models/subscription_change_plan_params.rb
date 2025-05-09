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

      # @!attribute addons
      #   Addons for the new plan. Note : Leaving this empty would remove any existing
      #   addons
      #
      #   @return [Array<Dodopayments::Models::SubscriptionChangePlanParams::Addon>, nil]
      optional :addons,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::SubscriptionChangePlanParams::Addon] },
               nil?: true

      # @!method initialize(product_id:, proration_billing_mode:, quantity:, addons: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionChangePlanParams} for more details.
      #
      #   @param product_id [String] Unique identifier of the product to subscribe to
      #
      #   @param proration_billing_mode [Symbol, Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode]
      #
      #   @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      #   @param addons [Array<Dodopayments::Models::SubscriptionChangePlanParams::Addon>, nil] Addons for the new plan. ...
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module ProrationBillingMode
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Addon < Dodopayments::Internal::Type::BaseModel
        # @!attribute addon_id
        #
        #   @return [String]
        required :addon_id, String

        # @!attribute quantity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!method initialize(addon_id:, quantity:)
        #   @param addon_id [String]
        #   @param quantity [Integer]
      end
    end
  end
end

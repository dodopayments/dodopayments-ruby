# frozen_string_literal: true

module Dodopayments
  module Models
    class UpdateSubscriptionPlanReq < Dodopayments::Internal::Type::BaseModel
      # @!attribute product_id
      #   Unique identifier of the product to subscribe to
      #
      #   @return [String]
      required :product_id, String

      # @!attribute proration_billing_mode
      #   Proration Billing Mode
      #
      #   @return [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::ProrationBillingMode]
      required :proration_billing_mode,
               enum: -> { Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode }

      # @!attribute quantity
      #   Number of units to subscribe for. Must be at least 1.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute addons
      #   Addons for the new plan. Note : Leaving this empty would remove any existing
      #   addons
      #
      #   @return [Array<Dodopayments::Models::AttachAddon>, nil]
      optional :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachAddon] }, nil?: true

      # @!attribute discount_code
      #   Optional discount code to apply to the new plan. If provided, validates and
      #   applies the discount to the plan change. If not provided and the subscription
      #   has an existing discount with `preserve_on_plan_change=true`, the existing
      #   discount will be preserved (if applicable to the new product).
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute metadata
      #   Metadata for the payment. If not passed, the metadata of the subscription will
      #   be taken
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute on_payment_failure
      #   Controls behavior when the plan change payment fails.
      #
      #   - `prevent_change`: Keep subscription on current plan until payment succeeds
      #   - `apply_change` (default): Apply plan change immediately regardless of payment
      #     outcome
      #
      #   If not specified, uses the business-level default setting.
      #
      #   @return [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::OnPaymentFailure, nil]
      optional :on_payment_failure,
               enum: -> { Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure },
               nil?: true

      # @!method initialize(product_id:, proration_billing_mode:, quantity:, addons: nil, discount_code: nil, metadata: nil, on_payment_failure: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::UpdateSubscriptionPlanReq} for more details.
      #
      #   @param product_id [String] Unique identifier of the product to subscribe to
      #
      #   @param proration_billing_mode [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::ProrationBillingMode] Proration Billing Mode
      #
      #   @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      #   @param addons [Array<Dodopayments::Models::AttachAddon>, nil] Addons for the new plan.
      #
      #   @param discount_code [String, nil] Optional discount code to apply to the new plan.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Metadata for the payment. If not passed, the metadata of the subscription will b
      #
      #   @param on_payment_failure [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::OnPaymentFailure, nil] Controls behavior when the plan change payment fails.

      # Proration Billing Mode
      #
      # @see Dodopayments::Models::UpdateSubscriptionPlanReq#proration_billing_mode
      module ProrationBillingMode
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately
        FULL_IMMEDIATELY = :full_immediately
        DIFFERENCE_IMMEDIATELY = :difference_immediately

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls behavior when the plan change payment fails.
      #
      # - `prevent_change`: Keep subscription on current plan until payment succeeds
      # - `apply_change` (default): Apply plan change immediately regardless of payment
      #   outcome
      #
      # If not specified, uses the business-level default setting.
      #
      # @see Dodopayments::Models::UpdateSubscriptionPlanReq#on_payment_failure
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        PREVENT_CHANGE = :prevent_change
        APPLY_CHANGE = :apply_change

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

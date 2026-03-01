# frozen_string_literal: true

module Dodopayments
  module Models
    class AttachCreditEntitlement < Dodopayments::Internal::Type::BaseModel
      # @!attribute credit_entitlement_id
      #   ID of the credit entitlement to attach
      #
      #   @return [String]
      required :credit_entitlement_id, String

      # @!attribute credits_amount
      #   Number of credits to grant when this product is purchased
      #
      #   @return [String]
      required :credits_amount, String

      # @!attribute currency
      #   Currency for credit-related pricing
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute expires_after_days
      #   Number of days after which credits expire
      #
      #   @return [Integer, nil]
      optional :expires_after_days, Integer, nil?: true

      # @!attribute low_balance_threshold_percent
      #   Balance threshold percentage for low balance notifications (0-100)
      #
      #   @return [Integer, nil]
      optional :low_balance_threshold_percent, Integer, nil?: true

      # @!attribute max_rollover_count
      #   Maximum number of rollover cycles allowed
      #
      #   @return [Integer, nil]
      optional :max_rollover_count, Integer, nil?: true

      # @!attribute overage_behavior
      #   Controls how overage is handled at billing cycle end.
      #
      #   @return [Symbol, Dodopayments::Models::CbbOverageBehavior, nil]
      optional :overage_behavior, enum: -> { Dodopayments::CbbOverageBehavior }, nil?: true

      # @!attribute overage_enabled
      #   Whether overage usage is allowed beyond credit balance
      #
      #   @return [Boolean, nil]
      optional :overage_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute overage_limit
      #   Maximum amount of overage allowed
      #
      #   @return [String, nil]
      optional :overage_limit, String, nil?: true

      # @!attribute price_per_unit
      #   Price per credit unit for purchasing additional credits
      #
      #   @return [String, nil]
      optional :price_per_unit, String, nil?: true

      # @!attribute proration_behavior
      #   Proration behavior for credit grants during plan changes
      #
      #   @return [Symbol, Dodopayments::Models::CbbProrationBehavior, nil]
      optional :proration_behavior, enum: -> { Dodopayments::CbbProrationBehavior }, nil?: true

      # @!attribute rollover_enabled
      #   Whether unused credits can roll over to the next billing period
      #
      #   @return [Boolean, nil]
      optional :rollover_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute rollover_percentage
      #   Percentage of unused credits that can roll over (0-100)
      #
      #   @return [Integer, nil]
      optional :rollover_percentage, Integer, nil?: true

      # @!attribute rollover_timeframe_count
      #   Number of timeframe units for rollover window
      #
      #   @return [Integer, nil]
      optional :rollover_timeframe_count, Integer, nil?: true

      # @!attribute rollover_timeframe_interval
      #   Time interval for rollover window (day, week, month, year)
      #
      #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
      optional :rollover_timeframe_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

      # @!attribute trial_credits
      #   Credits granted during trial period
      #
      #   @return [String, nil]
      optional :trial_credits, String, nil?: true

      # @!attribute trial_credits_expire_after_trial
      #   Whether trial credits expire when trial ends
      #
      #   @return [Boolean, nil]
      optional :trial_credits_expire_after_trial, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!method initialize(credit_entitlement_id:, credits_amount:, currency: nil, expires_after_days: nil, low_balance_threshold_percent: nil, max_rollover_count: nil, overage_behavior: nil, overage_enabled: nil, overage_limit: nil, price_per_unit: nil, proration_behavior: nil, rollover_enabled: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil, trial_credits: nil, trial_credits_expire_after_trial: nil)
      #   Request struct for attaching a credit entitlement to a product
      #
      #   @param credit_entitlement_id [String] ID of the credit entitlement to attach
      #
      #   @param credits_amount [String] Number of credits to grant when this product is purchased
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency for credit-related pricing
      #
      #   @param expires_after_days [Integer, nil] Number of days after which credits expire
      #
      #   @param low_balance_threshold_percent [Integer, nil] Balance threshold percentage for low balance notifications (0-100)
      #
      #   @param max_rollover_count [Integer, nil] Maximum number of rollover cycles allowed
      #
      #   @param overage_behavior [Symbol, Dodopayments::Models::CbbOverageBehavior, nil] Controls how overage is handled at billing cycle end.
      #
      #   @param overage_enabled [Boolean, nil] Whether overage usage is allowed beyond credit balance
      #
      #   @param overage_limit [String, nil] Maximum amount of overage allowed
      #
      #   @param price_per_unit [String, nil] Price per credit unit for purchasing additional credits
      #
      #   @param proration_behavior [Symbol, Dodopayments::Models::CbbProrationBehavior, nil] Proration behavior for credit grants during plan changes
      #
      #   @param rollover_enabled [Boolean, nil] Whether unused credits can roll over to the next billing period
      #
      #   @param rollover_percentage [Integer, nil] Percentage of unused credits that can roll over (0-100)
      #
      #   @param rollover_timeframe_count [Integer, nil] Number of timeframe units for rollover window
      #
      #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Time interval for rollover window (day, week, month, year)
      #
      #   @param trial_credits [String, nil] Credits granted during trial period
      #
      #   @param trial_credits_expire_after_trial [Boolean, nil] Whether trial credits expire when trial ends
    end
  end
end

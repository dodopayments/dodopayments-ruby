# frozen_string_literal: true

module Dodopayments
  module Models
    class CreditEntitlementMappingResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   Unique ID of this mapping
      #
      #   @return [String]
      required :id, String

      # @!attribute credit_entitlement_id
      #   ID of the credit entitlement
      #
      #   @return [String]
      required :credit_entitlement_id, String

      # @!attribute credit_entitlement_name
      #   Name of the credit entitlement
      #
      #   @return [String]
      required :credit_entitlement_name, String

      # @!attribute credit_entitlement_unit
      #   Unit label for the credit entitlement
      #
      #   @return [String]
      required :credit_entitlement_unit, String

      # @!attribute credits_amount
      #   Number of credits granted
      #
      #   @return [String]
      required :credits_amount, String

      # @!attribute overage_behavior
      #   Controls how overage is handled at billing cycle end.
      #
      #   @return [Symbol, Dodopayments::Models::CbbOverageBehavior]
      required :overage_behavior, enum: -> { Dodopayments::CbbOverageBehavior }

      # @!attribute overage_enabled
      #   Whether overage is enabled
      #
      #   @return [Boolean]
      required :overage_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute proration_behavior
      #   Proration behavior for credit grants during plan changes
      #
      #   @return [Symbol, Dodopayments::Models::CbbProrationBehavior]
      required :proration_behavior, enum: -> { Dodopayments::CbbProrationBehavior }

      # @!attribute rollover_enabled
      #   Whether rollover is enabled
      #
      #   @return [Boolean]
      required :rollover_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute trial_credits_expire_after_trial
      #   Whether trial credits expire after trial
      #
      #   @return [Boolean]
      required :trial_credits_expire_after_trial, Dodopayments::Internal::Type::Boolean

      # @!attribute currency
      #   Currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute expires_after_days
      #   Days until credits expire
      #
      #   @return [Integer, nil]
      optional :expires_after_days, Integer, nil?: true

      # @!attribute low_balance_threshold_percent
      #   Low balance threshold percentage
      #
      #   @return [Integer, nil]
      optional :low_balance_threshold_percent, Integer, nil?: true

      # @!attribute max_rollover_count
      #   Maximum rollover cycles
      #
      #   @return [Integer, nil]
      optional :max_rollover_count, Integer, nil?: true

      # @!attribute overage_limit
      #   Overage limit
      #
      #   @return [String, nil]
      optional :overage_limit, String, nil?: true

      # @!attribute price_per_unit
      #   Price per unit
      #
      #   @return [String, nil]
      optional :price_per_unit, String, nil?: true

      # @!attribute rollover_percentage
      #   Rollover percentage
      #
      #   @return [Integer, nil]
      optional :rollover_percentage, Integer, nil?: true

      # @!attribute rollover_timeframe_count
      #   Rollover timeframe count
      #
      #   @return [Integer, nil]
      optional :rollover_timeframe_count, Integer, nil?: true

      # @!attribute rollover_timeframe_interval
      #   Rollover timeframe interval
      #
      #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
      optional :rollover_timeframe_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

      # @!attribute trial_credits
      #   Trial credits
      #
      #   @return [String, nil]
      optional :trial_credits, String, nil?: true

      # @!method initialize(id:, credit_entitlement_id:, credit_entitlement_name:, credit_entitlement_unit:, credits_amount:, overage_behavior:, overage_enabled:, proration_behavior:, rollover_enabled:, trial_credits_expire_after_trial:, currency: nil, expires_after_days: nil, low_balance_threshold_percent: nil, max_rollover_count: nil, overage_limit: nil, price_per_unit: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil, trial_credits: nil)
      #   Response struct for credit entitlement mapping
      #
      #   @param id [String] Unique ID of this mapping
      #
      #   @param credit_entitlement_id [String] ID of the credit entitlement
      #
      #   @param credit_entitlement_name [String] Name of the credit entitlement
      #
      #   @param credit_entitlement_unit [String] Unit label for the credit entitlement
      #
      #   @param credits_amount [String] Number of credits granted
      #
      #   @param overage_behavior [Symbol, Dodopayments::Models::CbbOverageBehavior] Controls how overage is handled at billing cycle end.
      #
      #   @param overage_enabled [Boolean] Whether overage is enabled
      #
      #   @param proration_behavior [Symbol, Dodopayments::Models::CbbProrationBehavior] Proration behavior for credit grants during plan changes
      #
      #   @param rollover_enabled [Boolean] Whether rollover is enabled
      #
      #   @param trial_credits_expire_after_trial [Boolean] Whether trial credits expire after trial
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency
      #
      #   @param expires_after_days [Integer, nil] Days until credits expire
      #
      #   @param low_balance_threshold_percent [Integer, nil] Low balance threshold percentage
      #
      #   @param max_rollover_count [Integer, nil] Maximum rollover cycles
      #
      #   @param overage_limit [String, nil] Overage limit
      #
      #   @param price_per_unit [String, nil] Price per unit
      #
      #   @param rollover_percentage [Integer, nil] Rollover percentage
      #
      #   @param rollover_timeframe_count [Integer, nil] Rollover timeframe count
      #
      #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Rollover timeframe interval
      #
      #   @param trial_credits [String, nil] Trial credits
    end
  end
end

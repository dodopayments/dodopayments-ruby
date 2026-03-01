# frozen_string_literal: true

module Dodopayments
  module Models
    class CreditEntitlementCartResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute credit_entitlement_id
      #
      #   @return [String]
      required :credit_entitlement_id, String

      # @!attribute credit_entitlement_name
      #
      #   @return [String]
      required :credit_entitlement_name, String

      # @!attribute credits_amount
      #
      #   @return [String]
      required :credits_amount, String

      # @!attribute overage_balance
      #   Customer's current overage balance for this entitlement
      #
      #   @return [String]
      required :overage_balance, String

      # @!attribute overage_behavior
      #   Controls how overage is handled at the end of a billing cycle.
      #
      #   | Preset                     | Charge at billing | Credits reduce overage | Preserve overage at reset |
      #   | -------------------------- | :---------------: | :--------------------: | :-----------------------: |
      #   | `forgive_at_reset`         |        No         |           No           |            No             |
      #   | `invoice_at_billing`       |        Yes        |           No           |            No             |
      #   | `carry_deficit`            |        No         |           No           |            Yes            |
      #   | `carry_deficit_auto_repay` |        No         |          Yes           |            Yes            |
      #
      #   @return [Symbol, Dodopayments::Models::CbbOverageBehavior]
      required :overage_behavior, enum: -> { Dodopayments::CbbOverageBehavior }

      # @!attribute overage_enabled
      #
      #   @return [Boolean]
      required :overage_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute product_id
      #
      #   @return [String]
      required :product_id, String

      # @!attribute remaining_balance
      #   Customer's current remaining credit balance for this entitlement
      #
      #   @return [String]
      required :remaining_balance, String

      # @!attribute rollover_enabled
      #
      #   @return [Boolean]
      required :rollover_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute unit
      #   Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
      #
      #   @return [String]
      required :unit, String

      # @!attribute expires_after_days
      #
      #   @return [Integer, nil]
      optional :expires_after_days, Integer, nil?: true

      # @!attribute low_balance_threshold_percent
      #
      #   @return [Integer, nil]
      optional :low_balance_threshold_percent, Integer, nil?: true

      # @!attribute max_rollover_count
      #
      #   @return [Integer, nil]
      optional :max_rollover_count, Integer, nil?: true

      # @!attribute overage_limit
      #
      #   @return [String, nil]
      optional :overage_limit, String, nil?: true

      # @!attribute rollover_percentage
      #
      #   @return [Integer, nil]
      optional :rollover_percentage, Integer, nil?: true

      # @!attribute rollover_timeframe_count
      #
      #   @return [Integer, nil]
      optional :rollover_timeframe_count, Integer, nil?: true

      # @!attribute rollover_timeframe_interval
      #
      #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
      optional :rollover_timeframe_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

      # @!method initialize(credit_entitlement_id:, credit_entitlement_name:, credits_amount:, overage_balance:, overage_behavior:, overage_enabled:, product_id:, remaining_balance:, rollover_enabled:, unit:, expires_after_days: nil, low_balance_threshold_percent: nil, max_rollover_count: nil, overage_limit: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CreditEntitlementCartResponse} for more details.
      #
      #   Response struct representing credit entitlement cart details for a subscription
      #
      #   @param credit_entitlement_id [String]
      #
      #   @param credit_entitlement_name [String]
      #
      #   @param credits_amount [String]
      #
      #   @param overage_balance [String] Customer's current overage balance for this entitlement
      #
      #   @param overage_behavior [Symbol, Dodopayments::Models::CbbOverageBehavior] Controls how overage is handled at the end of a billing cycle.
      #
      #   @param overage_enabled [Boolean]
      #
      #   @param product_id [String]
      #
      #   @param remaining_balance [String] Customer's current remaining credit balance for this entitlement
      #
      #   @param rollover_enabled [Boolean]
      #
      #   @param unit [String] Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
      #
      #   @param expires_after_days [Integer, nil]
      #
      #   @param low_balance_threshold_percent [Integer, nil]
      #
      #   @param max_rollover_count [Integer, nil]
      #
      #   @param overage_limit [String, nil]
      #
      #   @param rollover_percentage [Integer, nil]
      #
      #   @param rollover_timeframe_count [Integer, nil]
      #
      #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil]
    end
  end
end

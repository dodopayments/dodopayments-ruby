# typed: strong

module Dodopayments
  module Models
    class CreditEntitlementCartResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditEntitlementCartResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :credit_entitlement_id

      sig { returns(String) }
      attr_accessor :credit_entitlement_name

      sig { returns(String) }
      attr_accessor :credits_amount

      # Customer's current overage balance for this entitlement
      sig { returns(String) }
      attr_accessor :overage_balance

      # Controls how overage is handled at the end of a billing cycle.
      #
      # | Preset                     | Charge at billing | Credits reduce overage | Preserve overage at reset |
      # | -------------------------- | :---------------: | :--------------------: | :-----------------------: |
      # | `forgive_at_reset`         |        No         |           No           |            No             |
      # | `invoice_at_billing`       |        Yes        |           No           |            No             |
      # | `carry_deficit`            |        No         |           No           |            Yes            |
      # | `carry_deficit_auto_repay` |        No         |          Yes           |            Yes            |
      sig { returns(Dodopayments::CbbOverageBehavior::TaggedSymbol) }
      attr_accessor :overage_behavior

      sig { returns(T::Boolean) }
      attr_accessor :overage_enabled

      sig { returns(String) }
      attr_accessor :product_id

      # Customer's current remaining credit balance for this entitlement
      sig { returns(String) }
      attr_accessor :remaining_balance

      sig { returns(T::Boolean) }
      attr_accessor :rollover_enabled

      # Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
      sig { returns(String) }
      attr_accessor :unit

      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_after_days

      sig { returns(T.nilable(Integer)) }
      attr_accessor :low_balance_threshold_percent

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_rollover_count

      sig { returns(T.nilable(String)) }
      attr_accessor :overage_limit

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_percentage

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_timeframe_count

      sig { returns(T.nilable(Dodopayments::TimeInterval::TaggedSymbol)) }
      attr_accessor :rollover_timeframe_interval

      # Response struct representing credit entitlement cart details for a subscription
      sig do
        params(
          credit_entitlement_id: String,
          credit_entitlement_name: String,
          credits_amount: String,
          overage_balance: String,
          overage_behavior: Dodopayments::CbbOverageBehavior::OrSymbol,
          overage_enabled: T::Boolean,
          product_id: String,
          remaining_balance: String,
          rollover_enabled: T::Boolean,
          unit: String,
          expires_after_days: T.nilable(Integer),
          low_balance_threshold_percent: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          overage_limit: T.nilable(String),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        credit_entitlement_id:,
        credit_entitlement_name:,
        credits_amount:,
        # Customer's current overage balance for this entitlement
        overage_balance:,
        # Controls how overage is handled at the end of a billing cycle.
        #
        # | Preset                     | Charge at billing | Credits reduce overage | Preserve overage at reset |
        # | -------------------------- | :---------------: | :--------------------: | :-----------------------: |
        # | `forgive_at_reset`         |        No         |           No           |            No             |
        # | `invoice_at_billing`       |        Yes        |           No           |            No             |
        # | `carry_deficit`            |        No         |           No           |            Yes            |
        # | `carry_deficit_auto_repay` |        No         |          Yes           |            Yes            |
        overage_behavior:,
        overage_enabled:,
        product_id:,
        # Customer's current remaining credit balance for this entitlement
        remaining_balance:,
        rollover_enabled:,
        # Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
        unit:,
        expires_after_days: nil,
        low_balance_threshold_percent: nil,
        max_rollover_count: nil,
        overage_limit: nil,
        rollover_percentage: nil,
        rollover_timeframe_count: nil,
        rollover_timeframe_interval: nil
      )
      end

      sig do
        override.returns(
          {
            credit_entitlement_id: String,
            credit_entitlement_name: String,
            credits_amount: String,
            overage_balance: String,
            overage_behavior: Dodopayments::CbbOverageBehavior::TaggedSymbol,
            overage_enabled: T::Boolean,
            product_id: String,
            remaining_balance: String,
            rollover_enabled: T::Boolean,
            unit: String,
            expires_after_days: T.nilable(Integer),
            low_balance_threshold_percent: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_limit: T.nilable(String),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::TaggedSymbol)
          }
        )
      end
      def to_hash
      end
    end
  end
end

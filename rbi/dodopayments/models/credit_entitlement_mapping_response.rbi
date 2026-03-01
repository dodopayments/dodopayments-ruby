# typed: strong

module Dodopayments
  module Models
    class CreditEntitlementMappingResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditEntitlementMappingResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique ID of this mapping
      sig { returns(String) }
      attr_accessor :id

      # ID of the credit entitlement
      sig { returns(String) }
      attr_accessor :credit_entitlement_id

      # Name of the credit entitlement
      sig { returns(String) }
      attr_accessor :credit_entitlement_name

      # Unit label for the credit entitlement
      sig { returns(String) }
      attr_accessor :credit_entitlement_unit

      # Number of credits granted
      sig { returns(String) }
      attr_accessor :credits_amount

      # Controls how overage is handled at billing cycle end.
      sig { returns(Dodopayments::CbbOverageBehavior::TaggedSymbol) }
      attr_accessor :overage_behavior

      # Whether overage is enabled
      sig { returns(T::Boolean) }
      attr_accessor :overage_enabled

      # Proration behavior for credit grants during plan changes
      sig { returns(Dodopayments::CbbProrationBehavior::TaggedSymbol) }
      attr_accessor :proration_behavior

      # Whether rollover is enabled
      sig { returns(T::Boolean) }
      attr_accessor :rollover_enabled

      # Whether trial credits expire after trial
      sig { returns(T::Boolean) }
      attr_accessor :trial_credits_expire_after_trial

      # Currency
      sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # Days until credits expire
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_after_days

      # Low balance threshold percentage
      sig { returns(T.nilable(Integer)) }
      attr_accessor :low_balance_threshold_percent

      # Maximum rollover cycles
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_rollover_count

      # Overage limit
      sig { returns(T.nilable(String)) }
      attr_accessor :overage_limit

      # Price per unit
      sig { returns(T.nilable(String)) }
      attr_accessor :price_per_unit

      # Rollover percentage
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_percentage

      # Rollover timeframe count
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_timeframe_count

      # Rollover timeframe interval
      sig { returns(T.nilable(Dodopayments::TimeInterval::TaggedSymbol)) }
      attr_accessor :rollover_timeframe_interval

      # Trial credits
      sig { returns(T.nilable(String)) }
      attr_accessor :trial_credits

      # Response struct for credit entitlement mapping
      sig do
        params(
          id: String,
          credit_entitlement_id: String,
          credit_entitlement_name: String,
          credit_entitlement_unit: String,
          credits_amount: String,
          overage_behavior: Dodopayments::CbbOverageBehavior::OrSymbol,
          overage_enabled: T::Boolean,
          proration_behavior: Dodopayments::CbbProrationBehavior::OrSymbol,
          rollover_enabled: T::Boolean,
          trial_credits_expire_after_trial: T::Boolean,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          expires_after_days: T.nilable(Integer),
          low_balance_threshold_percent: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          overage_limit: T.nilable(String),
          price_per_unit: T.nilable(String),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol),
          trial_credits: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique ID of this mapping
        id:,
        # ID of the credit entitlement
        credit_entitlement_id:,
        # Name of the credit entitlement
        credit_entitlement_name:,
        # Unit label for the credit entitlement
        credit_entitlement_unit:,
        # Number of credits granted
        credits_amount:,
        # Controls how overage is handled at billing cycle end.
        overage_behavior:,
        # Whether overage is enabled
        overage_enabled:,
        # Proration behavior for credit grants during plan changes
        proration_behavior:,
        # Whether rollover is enabled
        rollover_enabled:,
        # Whether trial credits expire after trial
        trial_credits_expire_after_trial:,
        # Currency
        currency: nil,
        # Days until credits expire
        expires_after_days: nil,
        # Low balance threshold percentage
        low_balance_threshold_percent: nil,
        # Maximum rollover cycles
        max_rollover_count: nil,
        # Overage limit
        overage_limit: nil,
        # Price per unit
        price_per_unit: nil,
        # Rollover percentage
        rollover_percentage: nil,
        # Rollover timeframe count
        rollover_timeframe_count: nil,
        # Rollover timeframe interval
        rollover_timeframe_interval: nil,
        # Trial credits
        trial_credits: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            credit_entitlement_id: String,
            credit_entitlement_name: String,
            credit_entitlement_unit: String,
            credits_amount: String,
            overage_behavior: Dodopayments::CbbOverageBehavior::TaggedSymbol,
            overage_enabled: T::Boolean,
            proration_behavior:
              Dodopayments::CbbProrationBehavior::TaggedSymbol,
            rollover_enabled: T::Boolean,
            trial_credits_expire_after_trial: T::Boolean,
            currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
            expires_after_days: T.nilable(Integer),
            low_balance_threshold_percent: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_limit: T.nilable(String),
            price_per_unit: T.nilable(String),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::TaggedSymbol),
            trial_credits: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

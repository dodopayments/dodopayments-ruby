# typed: strong

module Dodopayments
  module Models
    class AttachCreditEntitlement < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::AttachCreditEntitlement,
            Dodopayments::Internal::AnyHash
          )
        end

      # ID of the credit entitlement to attach
      sig { returns(String) }
      attr_accessor :credit_entitlement_id

      # Number of credits to grant when this product is purchased
      sig { returns(String) }
      attr_accessor :credits_amount

      # Currency for credit-related pricing
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :currency

      # Number of days after which credits expire
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_after_days

      # Balance threshold percentage for low balance notifications (0-100)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :low_balance_threshold_percent

      # Maximum number of rollover cycles allowed
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_rollover_count

      # Controls how overage is handled at billing cycle end.
      sig { returns(T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol)) }
      attr_accessor :overage_behavior

      # Whether overage usage is allowed beyond credit balance
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :overage_enabled

      # Maximum amount of overage allowed
      sig { returns(T.nilable(String)) }
      attr_accessor :overage_limit

      # Price per credit unit for purchasing additional credits
      sig { returns(T.nilable(String)) }
      attr_accessor :price_per_unit

      # Proration behavior for credit grants during plan changes
      sig { returns(T.nilable(Dodopayments::CbbProrationBehavior::OrSymbol)) }
      attr_accessor :proration_behavior

      # Whether unused credits can roll over to the next billing period
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :rollover_enabled

      # Percentage of unused credits that can roll over (0-100)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_percentage

      # Number of timeframe units for rollover window
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_timeframe_count

      # Time interval for rollover window (day, week, month, year)
      sig { returns(T.nilable(Dodopayments::TimeInterval::OrSymbol)) }
      attr_accessor :rollover_timeframe_interval

      # Credits granted during trial period
      sig { returns(T.nilable(String)) }
      attr_accessor :trial_credits

      # Whether trial credits expire when trial ends
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :trial_credits_expire_after_trial

      # Request struct for attaching a credit entitlement to a product
      sig do
        params(
          credit_entitlement_id: String,
          credits_amount: String,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          expires_after_days: T.nilable(Integer),
          low_balance_threshold_percent: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          overage_behavior:
            T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
          overage_enabled: T.nilable(T::Boolean),
          overage_limit: T.nilable(String),
          price_per_unit: T.nilable(String),
          proration_behavior:
            T.nilable(Dodopayments::CbbProrationBehavior::OrSymbol),
          rollover_enabled: T.nilable(T::Boolean),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol),
          trial_credits: T.nilable(String),
          trial_credits_expire_after_trial: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the credit entitlement to attach
        credit_entitlement_id:,
        # Number of credits to grant when this product is purchased
        credits_amount:,
        # Currency for credit-related pricing
        currency: nil,
        # Number of days after which credits expire
        expires_after_days: nil,
        # Balance threshold percentage for low balance notifications (0-100)
        low_balance_threshold_percent: nil,
        # Maximum number of rollover cycles allowed
        max_rollover_count: nil,
        # Controls how overage is handled at billing cycle end.
        overage_behavior: nil,
        # Whether overage usage is allowed beyond credit balance
        overage_enabled: nil,
        # Maximum amount of overage allowed
        overage_limit: nil,
        # Price per credit unit for purchasing additional credits
        price_per_unit: nil,
        # Proration behavior for credit grants during plan changes
        proration_behavior: nil,
        # Whether unused credits can roll over to the next billing period
        rollover_enabled: nil,
        # Percentage of unused credits that can roll over (0-100)
        rollover_percentage: nil,
        # Number of timeframe units for rollover window
        rollover_timeframe_count: nil,
        # Time interval for rollover window (day, week, month, year)
        rollover_timeframe_interval: nil,
        # Credits granted during trial period
        trial_credits: nil,
        # Whether trial credits expire when trial ends
        trial_credits_expire_after_trial: nil
      )
      end

      sig do
        override.returns(
          {
            credit_entitlement_id: String,
            credits_amount: String,
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            expires_after_days: T.nilable(Integer),
            low_balance_threshold_percent: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_behavior:
              T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
            overage_enabled: T.nilable(T::Boolean),
            overage_limit: T.nilable(String),
            price_per_unit: T.nilable(String),
            proration_behavior:
              T.nilable(Dodopayments::CbbProrationBehavior::OrSymbol),
            rollover_enabled: T.nilable(T::Boolean),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::OrSymbol),
            trial_credits: T.nilable(String),
            trial_credits_expire_after_trial: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end
    end
  end
end

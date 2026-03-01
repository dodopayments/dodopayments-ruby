# typed: strong

module Dodopayments
  module Models
    class CreditEntitlementCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditEntitlementCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Name of the credit entitlement
      sig { returns(String) }
      attr_accessor :name

      # Whether overage charges are enabled when credits run out
      sig { returns(T::Boolean) }
      attr_accessor :overage_enabled

      # Precision for credit amounts (0-10 decimal places)
      sig { returns(Integer) }
      attr_accessor :precision

      # Whether rollover is enabled for unused credits
      sig { returns(T::Boolean) }
      attr_accessor :rollover_enabled

      # Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
      sig { returns(String) }
      attr_accessor :unit

      # Currency for pricing (required if price_per_unit is set)
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :currency

      # Optional description of the credit entitlement
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Number of days after which credits expire (optional)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_after_days

      # Maximum number of times credits can be rolled over
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_rollover_count

      # Controls how overage is handled at billing cycle end. Defaults to
      # forgive_at_reset if not specified.
      sig { returns(T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol)) }
      attr_accessor :overage_behavior

      # Maximum overage units allowed (optional)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :overage_limit

      # Price per credit unit
      sig { returns(T.nilable(String)) }
      attr_accessor :price_per_unit

      # Percentage of unused credits that can rollover (0-100)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_percentage

      # Count of timeframe periods for rollover limit
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_timeframe_count

      # Interval type for rollover timeframe
      sig { returns(T.nilable(Dodopayments::TimeInterval::OrSymbol)) }
      attr_accessor :rollover_timeframe_interval

      sig do
        params(
          name: String,
          overage_enabled: T::Boolean,
          precision: Integer,
          rollover_enabled: T::Boolean,
          unit: String,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          expires_after_days: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          overage_behavior:
            T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
          overage_limit: T.nilable(Integer),
          price_per_unit: T.nilable(String),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of the credit entitlement
        name:,
        # Whether overage charges are enabled when credits run out
        overage_enabled:,
        # Precision for credit amounts (0-10 decimal places)
        precision:,
        # Whether rollover is enabled for unused credits
        rollover_enabled:,
        # Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
        unit:,
        # Currency for pricing (required if price_per_unit is set)
        currency: nil,
        # Optional description of the credit entitlement
        description: nil,
        # Number of days after which credits expire (optional)
        expires_after_days: nil,
        # Maximum number of times credits can be rolled over
        max_rollover_count: nil,
        # Controls how overage is handled at billing cycle end. Defaults to
        # forgive_at_reset if not specified.
        overage_behavior: nil,
        # Maximum overage units allowed (optional)
        overage_limit: nil,
        # Price per credit unit
        price_per_unit: nil,
        # Percentage of unused credits that can rollover (0-100)
        rollover_percentage: nil,
        # Count of timeframe periods for rollover limit
        rollover_timeframe_count: nil,
        # Interval type for rollover timeframe
        rollover_timeframe_interval: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            overage_enabled: T::Boolean,
            precision: Integer,
            rollover_enabled: T::Boolean,
            unit: String,
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            description: T.nilable(String),
            expires_after_days: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_behavior:
              T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
            overage_limit: T.nilable(Integer),
            price_per_unit: T.nilable(String),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::OrSymbol),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

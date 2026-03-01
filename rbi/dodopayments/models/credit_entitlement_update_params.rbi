# typed: strong

module Dodopayments
  module Models
    class CreditEntitlementUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditEntitlementUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Currency for pricing
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :currency

      # Optional description of the credit entitlement
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Number of days after which credits expire
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_after_days

      # Maximum number of times credits can be rolled over
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_rollover_count

      # Name of the credit entitlement
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Controls how overage is handled at billing cycle end.
      sig { returns(T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol)) }
      attr_accessor :overage_behavior

      # Whether overage charges are enabled when credits run out
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :overage_enabled

      # Maximum overage units allowed
      sig { returns(T.nilable(Integer)) }
      attr_accessor :overage_limit

      # Price per credit unit
      sig { returns(T.nilable(String)) }
      attr_accessor :price_per_unit

      # Whether rollover is enabled for unused credits
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :rollover_enabled

      # Percentage of unused credits that can rollover (0-100)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_percentage

      # Count of timeframe periods for rollover limit
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_timeframe_count

      # Interval type for rollover timeframe
      sig { returns(T.nilable(Dodopayments::TimeInterval::OrSymbol)) }
      attr_accessor :rollover_timeframe_interval

      # Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
      sig { returns(T.nilable(String)) }
      attr_accessor :unit

      sig do
        params(
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          expires_after_days: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          name: T.nilable(String),
          overage_behavior:
            T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
          overage_enabled: T.nilable(T::Boolean),
          overage_limit: T.nilable(Integer),
          price_per_unit: T.nilable(String),
          rollover_enabled: T.nilable(T::Boolean),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol),
          unit: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Currency for pricing
        currency: nil,
        # Optional description of the credit entitlement
        description: nil,
        # Number of days after which credits expire
        expires_after_days: nil,
        # Maximum number of times credits can be rolled over
        max_rollover_count: nil,
        # Name of the credit entitlement
        name: nil,
        # Controls how overage is handled at billing cycle end.
        overage_behavior: nil,
        # Whether overage charges are enabled when credits run out
        overage_enabled: nil,
        # Maximum overage units allowed
        overage_limit: nil,
        # Price per credit unit
        price_per_unit: nil,
        # Whether rollover is enabled for unused credits
        rollover_enabled: nil,
        # Percentage of unused credits that can rollover (0-100)
        rollover_percentage: nil,
        # Count of timeframe periods for rollover limit
        rollover_timeframe_count: nil,
        # Interval type for rollover timeframe
        rollover_timeframe_interval: nil,
        # Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
        unit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            description: T.nilable(String),
            expires_after_days: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            name: T.nilable(String),
            overage_behavior:
              T.nilable(Dodopayments::CbbOverageBehavior::OrSymbol),
            overage_enabled: T.nilable(T::Boolean),
            overage_limit: T.nilable(Integer),
            price_per_unit: T.nilable(String),
            rollover_enabled: T.nilable(T::Boolean),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::OrSymbol),
            unit: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

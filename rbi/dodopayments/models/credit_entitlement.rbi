# typed: strong

module Dodopayments
  module Models
    class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditEntitlement,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :name

      # Controls how overage is handled at billing cycle end.
      sig { returns(Dodopayments::CbbOverageBehavior::TaggedSymbol) }
      attr_accessor :overage_behavior

      sig { returns(T::Boolean) }
      attr_accessor :overage_enabled

      sig { returns(Integer) }
      attr_accessor :precision

      sig { returns(T::Boolean) }
      attr_accessor :rollover_enabled

      sig { returns(String) }
      attr_accessor :unit

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_after_days

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_rollover_count

      sig { returns(T.nilable(Integer)) }
      attr_accessor :overage_limit

      # Price per credit unit
      sig { returns(T.nilable(String)) }
      attr_accessor :price_per_unit

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_percentage

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rollover_timeframe_count

      sig { returns(T.nilable(Dodopayments::TimeInterval::TaggedSymbol)) }
      attr_accessor :rollover_timeframe_interval

      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          name: String,
          overage_behavior: Dodopayments::CbbOverageBehavior::OrSymbol,
          overage_enabled: T::Boolean,
          precision: Integer,
          rollover_enabled: T::Boolean,
          unit: String,
          updated_at: Time,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          expires_after_days: T.nilable(Integer),
          max_rollover_count: T.nilable(Integer),
          overage_limit: T.nilable(Integer),
          price_per_unit: T.nilable(String),
          rollover_percentage: T.nilable(Integer),
          rollover_timeframe_count: T.nilable(Integer),
          rollover_timeframe_interval:
            T.nilable(Dodopayments::TimeInterval::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        business_id:,
        created_at:,
        name:,
        # Controls how overage is handled at billing cycle end.
        overage_behavior:,
        overage_enabled:,
        precision:,
        rollover_enabled:,
        unit:,
        updated_at:,
        currency: nil,
        description: nil,
        expires_after_days: nil,
        max_rollover_count: nil,
        overage_limit: nil,
        # Price per credit unit
        price_per_unit: nil,
        rollover_percentage: nil,
        rollover_timeframe_count: nil,
        rollover_timeframe_interval: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_id: String,
            created_at: Time,
            name: String,
            overage_behavior: Dodopayments::CbbOverageBehavior::TaggedSymbol,
            overage_enabled: T::Boolean,
            precision: Integer,
            rollover_enabled: T::Boolean,
            unit: String,
            updated_at: Time,
            currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
            description: T.nilable(String),
            expires_after_days: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_limit: T.nilable(Integer),
            price_per_unit: T.nilable(String),
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

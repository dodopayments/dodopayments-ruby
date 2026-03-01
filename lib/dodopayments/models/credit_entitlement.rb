# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::CreditEntitlements#create
    class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute overage_behavior
      #   Controls how overage is handled at billing cycle end.
      #
      #   @return [Symbol, Dodopayments::Models::CbbOverageBehavior]
      required :overage_behavior, enum: -> { Dodopayments::CbbOverageBehavior }

      # @!attribute overage_enabled
      #
      #   @return [Boolean]
      required :overage_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute precision
      #
      #   @return [Integer]
      required :precision, Integer

      # @!attribute rollover_enabled
      #
      #   @return [Boolean]
      required :rollover_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute unit
      #
      #   @return [String]
      required :unit, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute expires_after_days
      #
      #   @return [Integer, nil]
      optional :expires_after_days, Integer, nil?: true

      # @!attribute max_rollover_count
      #
      #   @return [Integer, nil]
      optional :max_rollover_count, Integer, nil?: true

      # @!attribute overage_limit
      #
      #   @return [Integer, nil]
      optional :overage_limit, Integer, nil?: true

      # @!attribute price_per_unit
      #   Price per credit unit
      #
      #   @return [String, nil]
      optional :price_per_unit, String, nil?: true

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

      # @!method initialize(id:, business_id:, created_at:, name:, overage_behavior:, overage_enabled:, precision:, rollover_enabled:, unit:, updated_at:, currency: nil, description: nil, expires_after_days: nil, max_rollover_count: nil, overage_limit: nil, price_per_unit: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil)
      #   @param id [String]
      #
      #   @param business_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param name [String]
      #
      #   @param overage_behavior [Symbol, Dodopayments::Models::CbbOverageBehavior] Controls how overage is handled at billing cycle end.
      #
      #   @param overage_enabled [Boolean]
      #
      #   @param precision [Integer]
      #
      #   @param rollover_enabled [Boolean]
      #
      #   @param unit [String]
      #
      #   @param updated_at [Time]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil]
      #
      #   @param description [String, nil]
      #
      #   @param expires_after_days [Integer, nil]
      #
      #   @param max_rollover_count [Integer, nil]
      #
      #   @param overage_limit [Integer, nil]
      #
      #   @param price_per_unit [String, nil] Price per credit unit
      #
      #   @param rollover_percentage [Integer, nil]
      #
      #   @param rollover_timeframe_count [Integer, nil]
      #
      #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil]
    end
  end
end

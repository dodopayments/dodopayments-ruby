# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::CreditEntitlements#update
    class CreditEntitlementUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute currency
      #   Currency for pricing
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute description
      #   Optional description of the credit entitlement
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute expires_after_days
      #   Number of days after which credits expire
      #
      #   @return [Integer, nil]
      optional :expires_after_days, Integer, nil?: true

      # @!attribute max_rollover_count
      #   Maximum number of times credits can be rolled over
      #
      #   @return [Integer, nil]
      optional :max_rollover_count, Integer, nil?: true

      # @!attribute name
      #   Name of the credit entitlement
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute overage_behavior
      #   Controls how overage is handled at billing cycle end.
      #
      #   @return [Symbol, Dodopayments::Models::CbbOverageBehavior, nil]
      optional :overage_behavior, enum: -> { Dodopayments::CbbOverageBehavior }, nil?: true

      # @!attribute overage_enabled
      #   Whether overage charges are enabled when credits run out
      #
      #   @return [Boolean, nil]
      optional :overage_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute overage_limit
      #   Maximum overage units allowed
      #
      #   @return [Integer, nil]
      optional :overage_limit, Integer, nil?: true

      # @!attribute price_per_unit
      #   Price per credit unit
      #
      #   @return [String, nil]
      optional :price_per_unit, String, nil?: true

      # @!attribute rollover_enabled
      #   Whether rollover is enabled for unused credits
      #
      #   @return [Boolean, nil]
      optional :rollover_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute rollover_percentage
      #   Percentage of unused credits that can rollover (0-100)
      #
      #   @return [Integer, nil]
      optional :rollover_percentage, Integer, nil?: true

      # @!attribute rollover_timeframe_count
      #   Count of timeframe periods for rollover limit
      #
      #   @return [Integer, nil]
      optional :rollover_timeframe_count, Integer, nil?: true

      # @!attribute rollover_timeframe_interval
      #   Interval type for rollover timeframe
      #
      #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
      optional :rollover_timeframe_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

      # @!attribute unit
      #   Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
      #
      #   @return [String, nil]
      optional :unit, String, nil?: true

      # @!method initialize(id:, currency: nil, description: nil, expires_after_days: nil, max_rollover_count: nil, name: nil, overage_behavior: nil, overage_enabled: nil, overage_limit: nil, price_per_unit: nil, rollover_enabled: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil, unit: nil, request_options: {})
      #   @param id [String]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency for pricing
      #
      #   @param description [String, nil] Optional description of the credit entitlement
      #
      #   @param expires_after_days [Integer, nil] Number of days after which credits expire
      #
      #   @param max_rollover_count [Integer, nil] Maximum number of times credits can be rolled over
      #
      #   @param name [String, nil] Name of the credit entitlement
      #
      #   @param overage_behavior [Symbol, Dodopayments::Models::CbbOverageBehavior, nil] Controls how overage is handled at billing cycle end.
      #
      #   @param overage_enabled [Boolean, nil] Whether overage charges are enabled when credits run out
      #
      #   @param overage_limit [Integer, nil] Maximum overage units allowed
      #
      #   @param price_per_unit [String, nil] Price per credit unit
      #
      #   @param rollover_enabled [Boolean, nil] Whether rollover is enabled for unused credits
      #
      #   @param rollover_percentage [Integer, nil] Percentage of unused credits that can rollover (0-100)
      #
      #   @param rollover_timeframe_count [Integer, nil] Count of timeframe periods for rollover limit
      #
      #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Interval type for rollover timeframe
      #
      #   @param unit [String, nil] Unit of measurement for the credit (e.g., "API Calls", "Tokens", "Credits")
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

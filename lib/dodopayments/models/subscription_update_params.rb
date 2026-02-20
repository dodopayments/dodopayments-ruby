# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute billing
      #
      #   @return [Dodopayments::Models::BillingAddress, nil]
      optional :billing, -> { Dodopayments::BillingAddress }, nil?: true

      # @!attribute cancel_at_next_billing_date
      #   When set, the subscription will remain active until the end of billing period
      #
      #   @return [Boolean, nil]
      optional :cancel_at_next_billing_date, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute credit_entitlement_cart
      #   Update credit entitlement cart settings
      #
      #   @return [Array<Dodopayments::Models::SubscriptionUpdateParams::CreditEntitlementCart>, nil]
      optional :credit_entitlement_cart,
               -> {
                 Dodopayments::Internal::Type::ArrayOf[Dodopayments::SubscriptionUpdateParams::CreditEntitlementCart]
               },
               nil?: true

      # @!attribute customer_name
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute disable_on_demand
      #
      #   @return [Dodopayments::Models::SubscriptionUpdateParams::DisableOnDemand, nil]
      optional :disable_on_demand, -> { Dodopayments::SubscriptionUpdateParams::DisableOnDemand }, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute next_billing_date
      #
      #   @return [Time, nil]
      optional :next_billing_date, Time, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      optional :status, enum: -> { Dodopayments::SubscriptionStatus }, nil?: true

      # @!attribute tax_id
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(billing: nil, cancel_at_next_billing_date: nil, credit_entitlement_cart: nil, customer_name: nil, disable_on_demand: nil, metadata: nil, next_billing_date: nil, status: nil, tax_id: nil, request_options: {})
      #   @param billing [Dodopayments::Models::BillingAddress, nil]
      #
      #   @param cancel_at_next_billing_date [Boolean, nil] When set, the subscription will remain active until the end of billing period
      #
      #   @param credit_entitlement_cart [Array<Dodopayments::Models::SubscriptionUpdateParams::CreditEntitlementCart>, nil] Update credit entitlement cart settings
      #
      #   @param customer_name [String, nil]
      #
      #   @param disable_on_demand [Dodopayments::Models::SubscriptionUpdateParams::DisableOnDemand, nil]
      #
      #   @param metadata [Hash{Symbol=>String}, nil]
      #
      #   @param next_billing_date [Time, nil]
      #
      #   @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      #
      #   @param tax_id [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class CreditEntitlementCart < Dodopayments::Internal::Type::BaseModel
        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute credits_amount
        #
        #   @return [String, nil]
        optional :credits_amount, String, nil?: true

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

        # @!attribute overage_charge_at_billing
        #
        #   @return [Boolean, nil]
        optional :overage_charge_at_billing, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute overage_enabled
        #
        #   @return [Boolean, nil]
        optional :overage_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute overage_limit
        #
        #   @return [String, nil]
        optional :overage_limit, String, nil?: true

        # @!attribute rollover_enabled
        #
        #   @return [Boolean, nil]
        optional :rollover_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

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

        # @!method initialize(credit_entitlement_id:, credits_amount: nil, expires_after_days: nil, low_balance_threshold_percent: nil, max_rollover_count: nil, overage_charge_at_billing: nil, overage_enabled: nil, overage_limit: nil, rollover_enabled: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil)
        #   @param credit_entitlement_id [String]
        #   @param credits_amount [String, nil]
        #   @param expires_after_days [Integer, nil]
        #   @param low_balance_threshold_percent [Integer, nil]
        #   @param max_rollover_count [Integer, nil]
        #   @param overage_charge_at_billing [Boolean, nil]
        #   @param overage_enabled [Boolean, nil]
        #   @param overage_limit [String, nil]
        #   @param rollover_enabled [Boolean, nil]
        #   @param rollover_percentage [Integer, nil]
        #   @param rollover_timeframe_count [Integer, nil]
        #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil]
      end

      class DisableOnDemand < Dodopayments::Internal::Type::BaseModel
        # @!attribute next_billing_date
        #
        #   @return [Time]
        required :next_billing_date, Time

        # @!method initialize(next_billing_date:)
        #   @param next_billing_date [Time]
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#retrieve_credit_usage
    class SubscriptionRetrieveCreditUsageResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item>]
      required :items,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item] }

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!method initialize(items:, subscription_id:)
      #   Credit usage status for all entitlements linked to a subscription
      #
      #   @param items [Array<Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item>]
      #   @param subscription_id [String]

      class Item < Dodopayments::Internal::Type::BaseModel
        # @!attribute balance
        #   Customer's current credit balance for this entitlement (customer-wide)
        #
        #   @return [String]
        required :balance, String

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute credit_entitlement_name
        #
        #   @return [String]
        required :credit_entitlement_name, String

        # @!attribute limit_reached
        #   True if overage has reached or exceeded the limit. When true, further deductions
        #   that would increase overage will fail.
        #
        #   @return [Boolean]
        required :limit_reached, Dodopayments::Internal::Type::Boolean

        # @!attribute overage
        #   Current overage amount accrued (customer-wide)
        #
        #   @return [String]
        required :overage, String

        # @!attribute overage_enabled
        #   Whether overage is enabled for this entitlement on this subscription
        #
        #   @return [Boolean]
        required :overage_enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute unit
        #   Unit label for the credit entitlement (e.g. "API Calls", "Tokens")
        #
        #   @return [String]
        required :unit, String

        # @!attribute overage_limit
        #   Maximum allowed overage before deductions are blocked. None means unlimited
        #   overage (when overage_enabled is true).
        #
        #   @return [String, nil]
        optional :overage_limit, String, nil?: true

        # @!attribute remaining_headroom
        #   How much more overage can accumulate before being blocked. None if overage is
        #   not enabled or there is no limit (unlimited). A value of 0 means the next
        #   deduction that increases overage will be blocked.
        #
        #   @return [String, nil]
        optional :remaining_headroom, String, nil?: true

        # @!method initialize(balance:, credit_entitlement_id:, credit_entitlement_name:, limit_reached:, overage:, overage_enabled:, unit:, overage_limit: nil, remaining_headroom: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item} for more
        #   details.
        #
        #   Per-entitlement credit usage status for a subscription
        #
        #   @param balance [String] Customer's current credit balance for this entitlement (customer-wide)
        #
        #   @param credit_entitlement_id [String]
        #
        #   @param credit_entitlement_name [String]
        #
        #   @param limit_reached [Boolean] True if overage has reached or exceeded the limit.
        #
        #   @param overage [String] Current overage amount accrued (customer-wide)
        #
        #   @param overage_enabled [Boolean] Whether overage is enabled for this entitlement on this subscription
        #
        #   @param unit [String] Unit label for the credit entitlement (e.g. "API Calls", "Tokens")
        #
        #   @param overage_limit [String, nil] Maximum allowed overage before deductions are blocked.
        #
        #   @param remaining_headroom [String, nil] How much more overage can accumulate before being blocked.
      end
    end
  end
end

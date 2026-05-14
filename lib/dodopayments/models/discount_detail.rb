# frozen_string_literal: true

module Dodopayments
  module Models
    class DiscountDetail < Dodopayments::Internal::Type::BaseModel
      # @!attribute amount
      #   The discount amount (basis points for percentage, USD cents for flat)
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute business_id
      #   The business this discount belongs to
      #
      #   @return [String]
      required :business_id, String

      # @!attribute code
      #   The discount code
      #
      #   @return [String]
      required :code, String

      # @!attribute created_at
      #   Timestamp when the discount was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discount_id
      #   The unique discount ID
      #
      #   @return [String]
      required :discount_id, String

      # @!attribute metadata
      #   Additional metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute position
      #   Position of this discount in the stack (0-based)
      #
      #   @return [Integer]
      required :position, Integer

      # @!attribute preserve_on_plan_change
      #   Whether this discount should be preserved when a subscription changes plans
      #
      #   @return [Boolean]
      required :preserve_on_plan_change, Dodopayments::Internal::Type::Boolean

      # @!attribute restricted_to
      #   List of product IDs to which this discount is restricted
      #
      #   @return [Array<String>]
      required :restricted_to, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute times_used
      #   How many times this discount has been used
      #
      #   @return [Integer]
      required :times_used, Integer

      # @!attribute type
      #   The type of discount
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType]
      required :type, enum: -> { Dodopayments::DiscountType }

      # @!attribute cycles_remaining
      #   Remaining billing cycles for this discount on this subscription (None for
      #   one-time payments)
      #
      #   @return [Integer, nil]
      optional :cycles_remaining, Integer, nil?: true

      # @!attribute expires_at
      #   Optional date/time after which discount is expired
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute name
      #   Name for the Discount
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute subscription_cycles
      #   Number of subscription billing cycles this discount is valid for
      #
      #   @return [Integer, nil]
      optional :subscription_cycles, Integer, nil?: true

      # @!attribute usage_limit
      #   Usage limit for this discount, if any
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!method initialize(amount:, business_id:, code:, created_at:, discount_id:, metadata:, position:, preserve_on_plan_change:, restricted_to:, times_used:, type:, cycles_remaining: nil, expires_at: nil, name: nil, subscription_cycles: nil, usage_limit: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::DiscountDetail} for more details.
      #
      #   Response struct for a discount with its position in a stack and optional
      #   cycle-tracking information (for subscriptions).
      #
      #   @param amount [Integer] The discount amount (basis points for percentage, USD cents for flat)
      #
      #   @param business_id [String] The business this discount belongs to
      #
      #   @param code [String] The discount code
      #
      #   @param created_at [Time] Timestamp when the discount was created
      #
      #   @param discount_id [String] The unique discount ID
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata
      #
      #   @param position [Integer] Position of this discount in the stack (0-based)
      #
      #   @param preserve_on_plan_change [Boolean] Whether this discount should be preserved when a subscription changes plans
      #
      #   @param restricted_to [Array<String>] List of product IDs to which this discount is restricted
      #
      #   @param times_used [Integer] How many times this discount has been used
      #
      #   @param type [Symbol, Dodopayments::Models::DiscountType] The type of discount
      #
      #   @param cycles_remaining [Integer, nil] Remaining billing cycles for this discount on this subscription (None for one-ti
      #
      #   @param expires_at [Time, nil] Optional date/time after which discount is expired
      #
      #   @param name [String, nil] Name for the Discount
      #
      #   @param subscription_cycles [Integer, nil] Number of subscription billing cycles this discount is valid for
      #
      #   @param usage_limit [Integer, nil] Usage limit for this discount, if any
    end
  end
end

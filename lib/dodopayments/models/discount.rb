# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Discounts#create
    class Discount < Dodopayments::Internal::Type::BaseModel
      # @!attribute amount
      #   The discount amount in **basis points** (e.g., 540 => 5.4%).
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute business_id
      #   The business this discount belongs to.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute code
      #   The discount code (up to 16 chars).
      #
      #   @return [String]
      required :code, String

      # @!attribute created_at
      #   Timestamp when the discount is created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer_eligibility
      #   Who may redeem this discount code.
      #
      #   @return [Symbol, Dodopayments::Models::Discount::CustomerEligibility]
      required :customer_eligibility, enum: -> { Dodopayments::Discount::CustomerEligibility }

      # @!attribute discount_id
      #   The unique discount ID
      #
      #   @return [String]
      required :discount_id, String

      # @!attribute metadata
      #   Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}]
      required :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute preserve_on_plan_change
      #   Whether this discount should be preserved when a subscription changes plans.
      #   Default: false (discount is removed on plan change)
      #
      #   @return [Boolean]
      required :preserve_on_plan_change, Dodopayments::Internal::Type::Boolean

      # @!attribute restricted_to
      #   List of product IDs to which this discount is restricted.
      #
      #   @return [Array<String>]
      required :restricted_to, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute times_used
      #   How many times this discount has been used.
      #
      #   @return [Integer]
      required :times_used, Integer

      # @!attribute type
      #   The type of discount (`percentage` or `flat`).
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType]
      required :type, enum: -> { Dodopayments::DiscountType }

      # @!attribute currency_options
      #   Per-currency options (flat deduction / percentage cap + minimum subtotal). Empty
      #   for discounts without any configured currency options.
      #
      #   @return [Array<Dodopayments::Models::Discount::CurrencyOption>, nil]
      optional :currency_options,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Discount::CurrencyOption] }

      # @!attribute expires_at
      #   Optional date/time after which discount is expired.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute name
      #   Name for the Discount
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute per_customer_usage_limit
      #   Maximum number of times a single customer may redeem this discount, if any.
      #
      #   @return [Integer, nil]
      optional :per_customer_usage_limit, Integer, nil?: true

      # @!attribute starts_at
      #   Optional date/time before which the discount is not yet active. NULL = active
      #   immediately.
      #
      #   @return [Time, nil]
      optional :starts_at, Time, nil?: true

      # @!attribute subscription_cycles
      #   Number of subscription billing cycles this discount is valid for. If not
      #   provided, the discount will be applied indefinitely to all recurring payments
      #   related to the subscription.
      #
      #   @return [Integer, nil]
      optional :subscription_cycles, Integer, nil?: true

      # @!attribute usage_limit
      #   Usage limit for this discount, if any.
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!method initialize(amount:, business_id:, code:, created_at:, customer_eligibility:, discount_id:, metadata:, preserve_on_plan_change:, restricted_to:, times_used:, type:, currency_options: nil, expires_at: nil, name: nil, per_customer_usage_limit: nil, starts_at: nil, subscription_cycles: nil, usage_limit: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Discount} for more details.
      #
      #   @param amount [Integer] The discount amount in **basis points** (e.g., 540 => 5.4%).
      #
      #   @param business_id [String] The business this discount belongs to.
      #
      #   @param code [String] The discount code (up to 16 chars).
      #
      #   @param created_at [Time] Timestamp when the discount is created
      #
      #   @param customer_eligibility [Symbol, Dodopayments::Models::Discount::CustomerEligibility] Who may redeem this discount code.
      #
      #   @param discount_id [String] The unique discount ID
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @param preserve_on_plan_change [Boolean] Whether this discount should be preserved when a subscription changes plans.
      #
      #   @param restricted_to [Array<String>] List of product IDs to which this discount is restricted.
      #
      #   @param times_used [Integer] How many times this discount has been used.
      #
      #   @param type [Symbol, Dodopayments::Models::DiscountType] The type of discount (`percentage` or `flat`).
      #
      #   @param currency_options [Array<Dodopayments::Models::Discount::CurrencyOption>] Per-currency options (flat deduction / percentage cap + minimum subtotal).
      #
      #   @param expires_at [Time, nil] Optional date/time after which discount is expired.
      #
      #   @param name [String, nil] Name for the Discount
      #
      #   @param per_customer_usage_limit [Integer, nil] Maximum number of times a single customer may redeem this discount, if any.
      #
      #   @param starts_at [Time, nil] Optional date/time before which the discount is not yet active. NULL = active im
      #
      #   @param subscription_cycles [Integer, nil] Number of subscription billing cycles this discount is valid for.
      #
      #   @param usage_limit [Integer, nil] Usage limit for this discount, if any.

      # Who may redeem this discount code.
      #
      # @see Dodopayments::Models::Discount#customer_eligibility
      module CustomerEligibility
        extend Dodopayments::Internal::Type::Enum

        ANY = :any
        FIRST_TIME = :first_time
        EXISTING = :existing
        SPECIFIC = :specific

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class CurrencyOption < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency this option applies to.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute is_default
        #   Whether this is the default row FX conversions pivot from.
        #
        #   @return [Boolean]
        required :is_default, Dodopayments::Internal::Type::Boolean

        # @!attribute minimum_subtotal
        #   Eligible-cart threshold in this currency's subunits (0 = no minimum).
        #
        #   @return [Integer]
        required :minimum_subtotal, Integer

        # @!attribute max_amount_possible
        #   The most this code discounts in this currency's subunits (flat deduction or
        #   percentage cap).
        #
        #   @return [Integer, nil]
        optional :max_amount_possible, Integer, nil?: true

        # @!method initialize(currency:, is_default:, minimum_subtotal:, max_amount_possible: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Discount::CurrencyOption} for more details.
        #
        #   A per-currency discount option (response shape). `max_amount_possible` mirrors
        #   the DB column of the same name.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] The currency this option applies to.
        #
        #   @param is_default [Boolean] Whether this is the default row FX conversions pivot from.
        #
        #   @param minimum_subtotal [Integer] Eligible-cart threshold in this currency's subunits (0 = no minimum).
        #
        #   @param max_amount_possible [Integer, nil] The most this code discounts in this currency's subunits (flat deduction
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Discounts#update
    class DiscountUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute discount_id
      #
      #   @return [String]
      required :discount_id, String

      # @!attribute amount
      #   If present, update the discount amount in **basis points** (e.g., `540` =
      #   `5.4%`, `10000` = `100%`).
      #
      #   Must be at least 1 if provided.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute code
      #   If present, update the discount code (uppercase).
      #
      #   @return [String, nil]
      optional :code, String, nil?: true

      # @!attribute currency_options
      #   If present, fully replaces the discount's currency options (replace-set
      #   semantics, like `restricted_to`). Send an empty array to clear them.
      #
      #   @return [Array<Dodopayments::Models::DiscountUpdateParams::CurrencyOption>, nil]
      optional :currency_options,
               -> {
                 Dodopayments::Internal::Type::ArrayOf[Dodopayments::DiscountUpdateParams::CurrencyOption]
               },
               nil?: true

      # @!attribute customer_eligibility
      #   If present, update who may redeem this discount. Plain field (not
      #   double-option): the DB column is `NOT NULL`, so it can never be cleared back to
      #   unset, only changed to another `CustomerEligibility` value.
      #
      #   @return [Symbol, Dodopayments::Models::DiscountUpdateParams::CustomerEligibility, nil]
      optional :customer_eligibility,
               enum: -> { Dodopayments::DiscountUpdateParams::CustomerEligibility },
               nil?: true

      # @!attribute expires_at
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute metadata
      #   Additional metadata for the discount
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata,
               -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] },
               nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute per_customer_usage_limit
      #   If present, update the per-customer usage limit (double-option: send `null` to
      #   clear it back to unlimited). Must be `<= usage_limit` (the value in effect after
      #   this patch) when both are set.
      #
      #   @return [Integer, nil]
      optional :per_customer_usage_limit, Integer, nil?: true

      # @!attribute preserve_on_plan_change
      #   Whether this discount should be preserved when a subscription changes plans. If
      #   not provided, the existing value is kept.
      #
      #   @return [Boolean, nil]
      optional :preserve_on_plan_change, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute restricted_to
      #   If present, replaces all restricted product IDs with this new set. To remove all
      #   restrictions, send empty array
      #
      #   @return [Array<String>, nil]
      optional :restricted_to, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute starts_at
      #   If present, update `starts_at` (double-option: send `null` to clear it).
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

      # @!attribute type
      #   If present, update the discount type (`percentage` or `flat`).
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType, nil]
      optional :type, enum: -> { Dodopayments::DiscountType }, nil?: true

      # @!attribute usage_limit
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!method initialize(discount_id:, amount: nil, code: nil, currency_options: nil, customer_eligibility: nil, expires_at: nil, metadata: nil, name: nil, per_customer_usage_limit: nil, preserve_on_plan_change: nil, restricted_to: nil, starts_at: nil, subscription_cycles: nil, type: nil, usage_limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::DiscountUpdateParams} for more details.
      #
      #   @param discount_id [String]
      #
      #   @param amount [Integer, nil] If present, update the discount amount in **basis points** (e.g., `540` = `5.4%`
      #
      #   @param code [String, nil] If present, update the discount code (uppercase).
      #
      #   @param currency_options [Array<Dodopayments::Models::DiscountUpdateParams::CurrencyOption>, nil] If present, fully replaces the discount's currency options (replace-set
      #
      #   @param customer_eligibility [Symbol, Dodopayments::Models::DiscountUpdateParams::CustomerEligibility, nil] If present, update who may redeem this discount. Plain field (not
      #
      #   @param expires_at [Time, nil]
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}, nil] Additional metadata for the discount
      #
      #   @param name [String, nil]
      #
      #   @param per_customer_usage_limit [Integer, nil] If present, update the per-customer usage limit (double-option: send
      #
      #   @param preserve_on_plan_change [Boolean, nil] Whether this discount should be preserved when a subscription changes plans.
      #
      #   @param restricted_to [Array<String>, nil] If present, replaces all restricted product IDs with this new set.
      #
      #   @param starts_at [Time, nil] If present, update `starts_at` (double-option: send `null` to clear it).
      #
      #   @param subscription_cycles [Integer, nil] Number of subscription billing cycles this discount is valid for.
      #
      #   @param type [Symbol, Dodopayments::Models::DiscountType, nil] If present, update the discount type (`percentage` or `flat`).
      #
      #   @param usage_limit [Integer, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class CurrencyOption < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency this option applies to.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute is_default
        #   Whether this row is the default to convert from for unconfigured currencies. At
        #   most one row per discount may be default.
        #
        #   @return [Boolean, nil]
        optional :is_default, Dodopayments::Internal::Type::Boolean

        # @!attribute max_amount_possible
        #   The most this code discounts in this currency's subunits. For `flat` codes this
        #   is the deduction; for `percentage` codes it is the max-discount cap. Must be > 0
        #   if provided.
        #
        #   @return [Integer, nil]
        optional :max_amount_possible, Integer, nil?: true

        # @!attribute minimum_subtotal
        #   Eligible-cart threshold in this currency's subunits (0 = no minimum).
        #
        #   @return [Integer, nil]
        optional :minimum_subtotal, Integer

        # @!method initialize(currency:, is_default: nil, max_amount_possible: nil, minimum_subtotal: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::DiscountUpdateParams::CurrencyOption} for more details.
        #
        #   A per-currency discount option (request shape).
        #
        #   `max_amount_possible` is the most this code discounts in this currency — the
        #   flat deduction for `flat` codes, or the max-discount cap for `percentage` codes.
        #   Maps to the DB column of the same name.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] The currency this option applies to.
        #
        #   @param is_default [Boolean] Whether this row is the default to convert from for unconfigured
        #
        #   @param max_amount_possible [Integer, nil] The most this code discounts in this currency's subunits. For `flat` codes
        #
        #   @param minimum_subtotal [Integer] Eligible-cart threshold in this currency's subunits (0 = no minimum).
      end

      # If present, update who may redeem this discount. Plain field (not
      # double-option): the DB column is `NOT NULL`, so it can never be cleared back to
      # unset, only changed to another `CustomerEligibility` value.
      module CustomerEligibility
        extend Dodopayments::Internal::Type::Enum

        ANY = :any
        FIRST_TIME = :first_time
        EXISTING = :existing
        SPECIFIC = :specific

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Discounts#create
    class DiscountCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute amount
      #   The discount amount in **basis points** (e.g. `540` means `5.4%`, `10000` means
      #   `100%`).
      #
      #   Must be at least 1.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute type
      #   The discount type: `percentage` or `flat` (`flat_per_unit` stays blocked).
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType]
      required :type, enum: -> { Dodopayments::DiscountType }

      # @!attribute code
      #   Optionally supply a code (will be uppercased).
      #
      #   - Must be at least 3 characters if provided.
      #   - If omitted, a random 16-character code is generated.
      #
      #   @return [String, nil]
      optional :code, String, nil?: true

      # @!attribute currency_options
      #   Per-currency options (flat deduction / percentage cap + minimum subtotal).
      #   Required for `flat` codes (must include a resolvable default); optional
      #   per-currency caps for `percentage` codes. Per-row invariants are checked in
      #   `normalize_currency_options`, not via `#[validate(nested)]`.
      #
      #   @return [Array<Dodopayments::Models::DiscountCreateParams::CurrencyOption>, nil]
      optional :currency_options,
               -> {
                 Dodopayments::Internal::Type::ArrayOf[Dodopayments::DiscountCreateParams::CurrencyOption]
               },
               nil?: true

      # @!attribute customer_eligibility
      #   Who may redeem this discount code. Defaults to `any` (unrestricted). `specific`
      #   starts with zero attached customers (fails closed) until customers are attached
      #   via `POST /discounts/{id}/customers`.
      #
      #   @return [Symbol, Dodopayments::Models::DiscountCreateParams::CustomerEligibility, nil]
      optional :customer_eligibility,
               enum: -> { Dodopayments::DiscountCreateParams::CustomerEligibility },
               nil?: true

      # @!attribute expires_at
      #   When the discount expires, if ever.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute metadata
      #   Additional metadata for the discount
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute per_customer_usage_limit
      #   Maximum number of times a single customer may redeem this discount. Must be
      #   `<= usage_limit` when both are set.
      #
      #   @return [Integer, nil]
      optional :per_customer_usage_limit, Integer, nil?: true

      # @!attribute preserve_on_plan_change
      #   Whether this discount should be preserved when a subscription changes plans.
      #   Default: false (discount is removed on plan change)
      #
      #   @return [Boolean, nil]
      optional :preserve_on_plan_change, Dodopayments::Internal::Type::Boolean

      # @!attribute restricted_to
      #   List of product IDs to restrict usage (if any).
      #
      #   @return [Array<String>, nil]
      optional :restricted_to, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute starts_at
      #   When the discount becomes active, if scheduled for the future. NULL = active
      #   immediately. Must be strictly before `expires_at` when both are set.
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
      #   How many times this discount can be used (if any). Must be >= 1 if provided.
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!method initialize(amount:, type:, code: nil, currency_options: nil, customer_eligibility: nil, expires_at: nil, metadata: nil, name: nil, per_customer_usage_limit: nil, preserve_on_plan_change: nil, restricted_to: nil, starts_at: nil, subscription_cycles: nil, usage_limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::DiscountCreateParams} for more details.
      #
      #   @param amount [Integer] The discount amount in **basis points** (e.g. `540` means `5.4%`, `10000` means
      #
      #   @param type [Symbol, Dodopayments::Models::DiscountType] The discount type: `percentage` or `flat` (`flat_per_unit` stays blocked).
      #
      #   @param code [String, nil] Optionally supply a code (will be uppercased).
      #
      #   @param currency_options [Array<Dodopayments::Models::DiscountCreateParams::CurrencyOption>, nil] Per-currency options (flat deduction / percentage cap + minimum subtotal).
      #
      #   @param customer_eligibility [Symbol, Dodopayments::Models::DiscountCreateParams::CustomerEligibility, nil] Who may redeem this discount code. Defaults to `any` (unrestricted).
      #
      #   @param expires_at [Time, nil] When the discount expires, if ever.
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Additional metadata for the discount
      #
      #   @param name [String, nil]
      #
      #   @param per_customer_usage_limit [Integer, nil] Maximum number of times a single customer may redeem this discount.
      #
      #   @param preserve_on_plan_change [Boolean] Whether this discount should be preserved when a subscription changes plans.
      #
      #   @param restricted_to [Array<String>, nil] List of product IDs to restrict usage (if any).
      #
      #   @param starts_at [Time, nil] When the discount becomes active, if scheduled for the future.
      #
      #   @param subscription_cycles [Integer, nil] Number of subscription billing cycles this discount is valid for.
      #
      #   @param usage_limit [Integer, nil] How many times this discount can be used (if any).
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
        #   {Dodopayments::Models::DiscountCreateParams::CurrencyOption} for more details.
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

      # Who may redeem this discount code. Defaults to `any` (unrestricted). `specific`
      # starts with zero attached customers (fails closed) until customers are attached
      # via `POST /discounts/{id}/customers`.
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

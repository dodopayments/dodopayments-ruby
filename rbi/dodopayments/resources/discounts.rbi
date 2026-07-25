# typed: strong

module Dodopayments
  module Resources
    class Discounts
      # POST /discounts If `code` is omitted or empty, a random 16-char uppercase code
      # is generated.
      sig do
        params(
          amount: Integer,
          type: Dodopayments::DiscountType::OrSymbol,
          code: T.nilable(String),
          currency_options:
            T.nilable(
              T::Array[
                Dodopayments::DiscountCreateParams::CurrencyOption::OrHash
              ]
            ),
          customer_eligibility:
            T.nilable(
              Dodopayments::DiscountCreateParams::CustomerEligibility::OrSymbol
            ),
          expires_at: T.nilable(Time),
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          name: T.nilable(String),
          per_customer_usage_limit: T.nilable(Integer),
          preserve_on_plan_change: T::Boolean,
          restricted_to: T.nilable(T::Array[String]),
          starts_at: T.nilable(Time),
          subscription_cycles: T.nilable(Integer),
          usage_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Discount)
      end
      def create(
        # The discount amount in **basis points** (e.g. `540` means `5.4%`, `10000` means
        # `100%`).
        #
        # Must be at least 1.
        amount:,
        # The discount type: `percentage` or `flat` (`flat_per_unit` stays blocked).
        type:,
        # Optionally supply a code (will be uppercased).
        #
        # - Must be at least 3 characters if provided.
        # - If omitted, a random 16-character code is generated.
        code: nil,
        # Per-currency options (flat deduction / percentage cap + minimum subtotal).
        # Required for `flat` codes (must include a resolvable default); optional
        # per-currency caps for `percentage` codes. Per-row invariants are checked in
        # `normalize_currency_options`, not via `#[validate(nested)]`.
        currency_options: nil,
        # Who may redeem this discount code. Defaults to `any` (unrestricted). `specific`
        # starts with zero attached customers (fails closed) until customers are attached
        # via `POST /discounts/{id}/customers`.
        customer_eligibility: nil,
        # When the discount expires, if ever.
        expires_at: nil,
        # Additional metadata for the discount
        metadata: nil,
        name: nil,
        # Maximum number of times a single customer may redeem this discount. Must be
        # `<= usage_limit` when both are set.
        per_customer_usage_limit: nil,
        # Whether this discount should be preserved when a subscription changes plans.
        # Default: false (discount is removed on plan change)
        preserve_on_plan_change: nil,
        # List of product IDs to restrict usage (if any).
        restricted_to: nil,
        # When the discount becomes active, if scheduled for the future. NULL = active
        # immediately. Must be strictly before `expires_at` when both are set.
        starts_at: nil,
        # Number of subscription billing cycles this discount is valid for. If not
        # provided, the discount will be applied indefinitely to all recurring payments
        # related to the subscription.
        subscription_cycles: nil,
        # How many times this discount can be used (if any). Must be >= 1 if provided.
        usage_limit: nil,
        request_options: {}
      )
      end

      # GET /discounts/{discount_id}
      sig do
        params(
          discount_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Discount)
      end
      def retrieve(
        # Discount Id
        discount_id,
        request_options: {}
      )
      end

      # PATCH /discounts/{discount_id}
      sig do
        params(
          discount_id: String,
          amount: T.nilable(Integer),
          code: T.nilable(String),
          currency_options:
            T.nilable(
              T::Array[
                Dodopayments::DiscountUpdateParams::CurrencyOption::OrHash
              ]
            ),
          customer_eligibility:
            T.nilable(
              Dodopayments::DiscountUpdateParams::CustomerEligibility::OrSymbol
            ),
          expires_at: T.nilable(Time),
          metadata:
            T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
          name: T.nilable(String),
          per_customer_usage_limit: T.nilable(Integer),
          preserve_on_plan_change: T.nilable(T::Boolean),
          restricted_to: T.nilable(T::Array[String]),
          starts_at: T.nilable(Time),
          subscription_cycles: T.nilable(Integer),
          type: T.nilable(Dodopayments::DiscountType::OrSymbol),
          usage_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Discount)
      end
      def update(
        # Discount Id
        discount_id,
        # If present, update the discount amount in **basis points** (e.g., `540` =
        # `5.4%`, `10000` = `100%`).
        #
        # Must be at least 1 if provided.
        amount: nil,
        # If present, update the discount code (uppercase).
        code: nil,
        # If present, fully replaces the discount's currency options (replace-set
        # semantics, like `restricted_to`). Send an empty array to clear them.
        currency_options: nil,
        # If present, update who may redeem this discount. Plain field (not
        # double-option): the DB column is `NOT NULL`, so it can never be cleared back to
        # unset, only changed to another `CustomerEligibility` value.
        customer_eligibility: nil,
        expires_at: nil,
        # Additional metadata for the discount
        metadata: nil,
        name: nil,
        # If present, update the per-customer usage limit (double-option: send `null` to
        # clear it back to unlimited). Must be `<= usage_limit` (the value in effect after
        # this patch) when both are set.
        per_customer_usage_limit: nil,
        # Whether this discount should be preserved when a subscription changes plans. If
        # not provided, the existing value is kept.
        preserve_on_plan_change: nil,
        # If present, replaces all restricted product IDs with this new set. To remove all
        # restrictions, send empty array
        restricted_to: nil,
        # If present, update `starts_at` (double-option: send `null` to clear it).
        starts_at: nil,
        # Number of subscription billing cycles this discount is valid for. If not
        # provided, the discount will be applied indefinitely to all recurring payments
        # related to the subscription.
        subscription_cycles: nil,
        # If present, update the discount type (`percentage` or `flat`).
        type: nil,
        usage_limit: nil,
        request_options: {}
      )
      end

      # GET /discounts
      sig do
        params(
          active: T::Boolean,
          code: String,
          discount_type: Dodopayments::DiscountType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          product_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Discount
          ]
        )
      end
      def list(
        # Filter by active status. `true` = currently redeemable (started, not expired,
        # not usage-exhausted). `false` = not currently redeemable (expired,
        # usage-exhausted, or pending a future `starts_at`).
        active: nil,
        # Filter by discount code (partial match, case-insensitive)
        code: nil,
        # Filter by discount type
        discount_type: nil,
        # Page number (default = 0).
        page_number: nil,
        # Page size (default = 10, max = 100).
        page_size: nil,
        # Filter by product restriction (only discounts that apply to this product)
        product_id: nil,
        request_options: {}
      )
      end

      # DELETE /discounts/{discount_id}
      sig do
        params(
          discount_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Discount Id
        discount_id,
        request_options: {}
      )
      end

      # Validate and fetch a discount by its code name (e.g., "SAVE20"). This allows
      # real-time validation directly against the API using the human-readable discount
      # code instead of requiring the internal discount_id.
      sig do
        params(
          code: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Discount)
      end
      def retrieve_by_code(
        # The discount code (e.g., 'SAVE20')
        code,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

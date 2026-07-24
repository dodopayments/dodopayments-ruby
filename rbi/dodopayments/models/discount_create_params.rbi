# typed: strong

module Dodopayments
  module Models
    class DiscountCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DiscountCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The discount amount in **basis points** (e.g. `540` means `5.4%`, `10000` means
      # `100%`).
      #
      # Must be at least 1.
      sig { returns(Integer) }
      attr_accessor :amount

      # The discount type: `percentage` or `flat` (`flat_per_unit` stays blocked).
      sig { returns(Dodopayments::DiscountType::OrSymbol) }
      attr_accessor :type

      # Optionally supply a code (will be uppercased).
      #
      # - Must be at least 3 characters if provided.
      # - If omitted, a random 16-character code is generated.
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      # Per-currency options (flat deduction / percentage cap + minimum subtotal).
      # Required for `flat` codes (must include a resolvable default); optional
      # per-currency caps for `percentage` codes. Per-row invariants are checked in
      # `normalize_currency_options`, not via `#[validate(nested)]`.
      sig do
        returns(
          T.nilable(
            T::Array[Dodopayments::DiscountCreateParams::CurrencyOption]
          )
        )
      end
      attr_accessor :currency_options

      # Who may redeem this discount code. Defaults to `any` (unrestricted). `specific`
      # starts with zero attached customers (fails closed) until customers are attached
      # via `POST /discounts/{id}/customers`.
      sig do
        returns(
          T.nilable(
            Dodopayments::DiscountCreateParams::CustomerEligibility::OrSymbol
          )
        )
      end
      attr_accessor :customer_eligibility

      # When the discount expires, if ever.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Additional metadata for the discount
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants])
        )
      end
      attr_reader :metadata

      sig do
        params(
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants]
        ).void
      end
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Maximum number of times a single customer may redeem this discount. Must be
      # `<= usage_limit` when both are set.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :per_customer_usage_limit

      # Whether this discount should be preserved when a subscription changes plans.
      # Default: false (discount is removed on plan change)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :preserve_on_plan_change

      sig { params(preserve_on_plan_change: T::Boolean).void }
      attr_writer :preserve_on_plan_change

      # List of product IDs to restrict usage (if any).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :restricted_to

      # When the discount becomes active, if scheduled for the future. NULL = active
      # immediately. Must be strictly before `expires_at` when both are set.
      sig { returns(T.nilable(Time)) }
      attr_accessor :starts_at

      # Number of subscription billing cycles this discount is valid for. If not
      # provided, the discount will be applied indefinitely to all recurring payments
      # related to the subscription.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :subscription_cycles

      # How many times this discount can be used (if any). Must be >= 1 if provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :usage_limit

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            amount: Integer,
            type: Dodopayments::DiscountType::OrSymbol,
            code: T.nilable(String),
            currency_options:
              T.nilable(
                T::Array[Dodopayments::DiscountCreateParams::CurrencyOption]
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
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CurrencyOption < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::DiscountCreateParams::CurrencyOption,
              Dodopayments::Internal::AnyHash
            )
          end

        # The currency this option applies to.
        sig { returns(Dodopayments::Currency::OrSymbol) }
        attr_accessor :currency

        # Whether this row is the default to convert from for unconfigured currencies. At
        # most one row per discount may be default.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_default

        sig { params(is_default: T::Boolean).void }
        attr_writer :is_default

        # The most this code discounts in this currency's subunits. For `flat` codes this
        # is the deduction; for `percentage` codes it is the max-discount cap. Must be > 0
        # if provided.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_amount_possible

        # Eligible-cart threshold in this currency's subunits (0 = no minimum).
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_subtotal

        sig { params(minimum_subtotal: Integer).void }
        attr_writer :minimum_subtotal

        # A per-currency discount option (request shape).
        #
        # `max_amount_possible` is the most this code discounts in this currency — the
        # flat deduction for `flat` codes, or the max-discount cap for `percentage` codes.
        # Maps to the DB column of the same name.
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            is_default: T::Boolean,
            max_amount_possible: T.nilable(Integer),
            minimum_subtotal: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency this option applies to.
          currency:,
          # Whether this row is the default to convert from for unconfigured currencies. At
          # most one row per discount may be default.
          is_default: nil,
          # The most this code discounts in this currency's subunits. For `flat` codes this
          # is the deduction; for `percentage` codes it is the max-discount cap. Must be > 0
          # if provided.
          max_amount_possible: nil,
          # Eligible-cart threshold in this currency's subunits (0 = no minimum).
          minimum_subtotal: nil
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::OrSymbol,
              is_default: T::Boolean,
              max_amount_possible: T.nilable(Integer),
              minimum_subtotal: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Who may redeem this discount code. Defaults to `any` (unrestricted). `specific`
      # starts with zero attached customers (fails closed) until customers are attached
      # via `POST /discounts/{id}/customers`.
      module CustomerEligibility
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::DiscountCreateParams::CustomerEligibility
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANY =
          T.let(
            :any,
            Dodopayments::DiscountCreateParams::CustomerEligibility::TaggedSymbol
          )
        FIRST_TIME =
          T.let(
            :first_time,
            Dodopayments::DiscountCreateParams::CustomerEligibility::TaggedSymbol
          )
        EXISTING =
          T.let(
            :existing,
            Dodopayments::DiscountCreateParams::CustomerEligibility::TaggedSymbol
          )
        SPECIFIC =
          T.let(
            :specific,
            Dodopayments::DiscountCreateParams::CustomerEligibility::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::DiscountCreateParams::CustomerEligibility::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

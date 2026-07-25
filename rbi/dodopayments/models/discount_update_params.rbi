# typed: strong

module Dodopayments
  module Models
    class DiscountUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DiscountUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :discount_id

      # If present, update the discount amount in **basis points** (e.g., `540` =
      # `5.4%`, `10000` = `100%`).
      #
      # Must be at least 1 if provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      # If present, update the discount code (uppercase).
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      # If present, fully replaces the discount's currency options (replace-set
      # semantics, like `restricted_to`). Send an empty array to clear them.
      sig do
        returns(
          T.nilable(
            T::Array[Dodopayments::DiscountUpdateParams::CurrencyOption]
          )
        )
      end
      attr_accessor :currency_options

      # If present, update who may redeem this discount. Plain field (not
      # double-option): the DB column is `NOT NULL`, so it can never be cleared back to
      # unset, only changed to another `CustomerEligibility` value.
      sig do
        returns(
          T.nilable(
            Dodopayments::DiscountUpdateParams::CustomerEligibility::OrSymbol
          )
        )
      end
      attr_accessor :customer_eligibility

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Additional metadata for the discount
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants])
        )
      end
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # If present, update the per-customer usage limit (double-option: send `null` to
      # clear it back to unlimited). Must be `<= usage_limit` (the value in effect after
      # this patch) when both are set.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :per_customer_usage_limit

      # Whether this discount should be preserved when a subscription changes plans. If
      # not provided, the existing value is kept.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :preserve_on_plan_change

      # If present, replaces all restricted product IDs with this new set. To remove all
      # restrictions, send empty array
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :restricted_to

      # If present, update `starts_at` (double-option: send `null` to clear it).
      sig { returns(T.nilable(Time)) }
      attr_accessor :starts_at

      # Number of subscription billing cycles this discount is valid for. If not
      # provided, the discount will be applied indefinitely to all recurring payments
      # related to the subscription.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :subscription_cycles

      # If present, update the discount type (`percentage` or `flat`).
      sig { returns(T.nilable(Dodopayments::DiscountType::OrSymbol)) }
      attr_accessor :type

      sig { returns(T.nilable(Integer)) }
      attr_accessor :usage_limit

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
        ).returns(T.attached_class)
      end
      def self.new(
        discount_id:,
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

      sig do
        override.returns(
          {
            discount_id: String,
            amount: T.nilable(Integer),
            code: T.nilable(String),
            currency_options:
              T.nilable(
                T::Array[Dodopayments::DiscountUpdateParams::CurrencyOption]
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
              Dodopayments::DiscountUpdateParams::CurrencyOption,
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

      # If present, update who may redeem this discount. Plain field (not
      # double-option): the DB column is `NOT NULL`, so it can never be cleared back to
      # unset, only changed to another `CustomerEligibility` value.
      module CustomerEligibility
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::DiscountUpdateParams::CustomerEligibility
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANY =
          T.let(
            :any,
            Dodopayments::DiscountUpdateParams::CustomerEligibility::TaggedSymbol
          )
        FIRST_TIME =
          T.let(
            :first_time,
            Dodopayments::DiscountUpdateParams::CustomerEligibility::TaggedSymbol
          )
        EXISTING =
          T.let(
            :existing,
            Dodopayments::DiscountUpdateParams::CustomerEligibility::TaggedSymbol
          )
        SPECIFIC =
          T.let(
            :specific,
            Dodopayments::DiscountUpdateParams::CustomerEligibility::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::DiscountUpdateParams::CustomerEligibility::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

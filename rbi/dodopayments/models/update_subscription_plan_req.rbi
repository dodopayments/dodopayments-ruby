# typed: strong

module Dodopayments
  module Models
    class UpdateSubscriptionPlanReq < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::UpdateSubscriptionPlanReq,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique identifier of the product to subscribe to
      sig { returns(String) }
      attr_accessor :product_id

      # Proration Billing Mode
      sig do
        returns(
          Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::OrSymbol
        )
      end
      attr_accessor :proration_billing_mode

      # Number of units to subscribe for. Must be at least 1.
      sig { returns(Integer) }
      attr_accessor :quantity

      # Whether adaptive currency fees should be included in the price (true) or added
      # on top (false). If not specified, uses the subscription's stored setting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :adaptive_currency_fees_inclusive

      # Addons for the new plan. Note : Leaving this empty would remove any existing
      # addons
      sig { returns(T.nilable(T::Array[Dodopayments::AttachAddon])) }
      attr_accessor :addons

      # Replace a scheduled plan change with this one.
      #
      # The scheduled change is cancelled by the transaction that applies this change. A
      # change that never applies leaves the schedule in place.
      #
      # `effective_at: next_billing_date` is allowed. The new schedule then replaces the
      # old one in the request transaction.
      #
      # A pending plan change still gets a `409`. This field does not affect it.
      #
      # The preview route shares this request body, so a preview that sets this field
      # also passes the scheduled-change `409`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :cancel_scheduled_change_plan

      sig { params(cancel_scheduled_change_plan: T::Boolean).void }
      attr_writer :cancel_scheduled_change_plan

      # Collect the plan-change amount with a payment link. The customer then pays on a
      # checkout page.
      #
      # The business needs the `allow_plan_change_via_payment_link` capability. The
      # request needs `effective_at: immediately`. The request also needs
      # `on_payment_failure: prevent_change`.
      #
      # The preview route shares this request body and ignores this field.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :collect_via_payment_link

      sig { params(collect_via_payment_link: T::Boolean).void }
      attr_writer :collect_via_payment_link

      # DEPRECATED: Use discount_codes instead. Cannot be used together with
      # discount_codes.
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      # Stacked discount codes to apply to the new plan. Max 20. Cannot be used together
      # with discount_code. If provided, replaces any existing discount codes. Empty
      # array removes all discounts. If not provided (None), existing discounts with
      # preserve_on_plan_change=true are preserved.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :discount_codes

      # When to apply the plan change.
      #
      # - `immediately` (default): Apply the plan change right away
      # - `next_billing_date`: Schedule the change for the next billing date
      sig do
        returns(
          T.nilable(
            Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::OrSymbol
          )
        )
      end
      attr_reader :effective_at

      sig do
        params(
          effective_at:
            Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::OrSymbol
        ).void
      end
      attr_writer :effective_at

      # Metadata for the payment. If not passed, the metadata of the subscription will
      # be taken
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants])
        )
      end
      attr_accessor :metadata

      # Controls behavior when the plan change payment fails.
      #
      # - `prevent_change`: Keep subscription on current plan until payment succeeds
      # - `apply_change` (default): Apply plan change immediately regardless of payment
      #   outcome
      #
      # If not specified, uses the business-level default setting.
      sig do
        returns(
          T.nilable(
            Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure::OrSymbol
          )
        )
      end
      attr_accessor :on_payment_failure

      sig do
        params(
          product_id: String,
          proration_billing_mode:
            Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::OrSymbol,
          quantity: Integer,
          adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
          cancel_scheduled_change_plan: T::Boolean,
          collect_via_payment_link: T::Boolean,
          discount_code: T.nilable(String),
          discount_codes: T.nilable(T::Array[String]),
          effective_at:
            Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::OrSymbol,
          metadata:
            T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
          on_payment_failure:
            T.nilable(
              Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the product to subscribe to
        product_id:,
        # Proration Billing Mode
        proration_billing_mode:,
        # Number of units to subscribe for. Must be at least 1.
        quantity:,
        # Whether adaptive currency fees should be included in the price (true) or added
        # on top (false). If not specified, uses the subscription's stored setting.
        adaptive_currency_fees_inclusive: nil,
        # Addons for the new plan. Note : Leaving this empty would remove any existing
        # addons
        addons: nil,
        # Replace a scheduled plan change with this one.
        #
        # The scheduled change is cancelled by the transaction that applies this change. A
        # change that never applies leaves the schedule in place.
        #
        # `effective_at: next_billing_date` is allowed. The new schedule then replaces the
        # old one in the request transaction.
        #
        # A pending plan change still gets a `409`. This field does not affect it.
        #
        # The preview route shares this request body, so a preview that sets this field
        # also passes the scheduled-change `409`.
        cancel_scheduled_change_plan: nil,
        # Collect the plan-change amount with a payment link. The customer then pays on a
        # checkout page.
        #
        # The business needs the `allow_plan_change_via_payment_link` capability. The
        # request needs `effective_at: immediately`. The request also needs
        # `on_payment_failure: prevent_change`.
        #
        # The preview route shares this request body and ignores this field.
        collect_via_payment_link: nil,
        # DEPRECATED: Use discount_codes instead. Cannot be used together with
        # discount_codes.
        discount_code: nil,
        # Stacked discount codes to apply to the new plan. Max 20. Cannot be used together
        # with discount_code. If provided, replaces any existing discount codes. Empty
        # array removes all discounts. If not provided (None), existing discounts with
        # preserve_on_plan_change=true are preserved.
        discount_codes: nil,
        # When to apply the plan change.
        #
        # - `immediately` (default): Apply the plan change right away
        # - `next_billing_date`: Schedule the change for the next billing date
        effective_at: nil,
        # Metadata for the payment. If not passed, the metadata of the subscription will
        # be taken
        metadata: nil,
        # Controls behavior when the plan change payment fails.
        #
        # - `prevent_change`: Keep subscription on current plan until payment succeeds
        # - `apply_change` (default): Apply plan change immediately regardless of payment
        #   outcome
        #
        # If not specified, uses the business-level default setting.
        on_payment_failure: nil
      )
      end

      sig do
        override.returns(
          {
            product_id: String,
            proration_billing_mode:
              Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::OrSymbol,
            quantity: Integer,
            adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
            addons: T.nilable(T::Array[Dodopayments::AttachAddon]),
            cancel_scheduled_change_plan: T::Boolean,
            collect_via_payment_link: T::Boolean,
            discount_code: T.nilable(String),
            discount_codes: T.nilable(T::Array[String]),
            effective_at:
              Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::OrSymbol,
            metadata:
              T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
            on_payment_failure:
              T.nilable(
                Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      # Proration Billing Mode
      module ProrationBillingMode
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::TaggedSymbol
          )
        DO_NOT_BILL =
          T.let(
            :do_not_bill,
            Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # When to apply the plan change.
      #
      # - `immediately` (default): Apply the plan change right away
      # - `next_billing_date`: Schedule the change for the next billing date
      module EffectiveAt
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::TaggedSymbol
          )
        NEXT_BILLING_DATE =
          T.let(
            :next_billing_date,
            Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Controls behavior when the plan change payment fails.
      #
      # - `prevent_change`: Keep subscription on current plan until payment succeeds
      # - `apply_change` (default): Apply plan change immediately regardless of payment
      #   outcome
      #
      # If not specified, uses the business-level default setting.
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREVENT_CHANGE =
          T.let(
            :prevent_change,
            Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure::TaggedSymbol
          )
        APPLY_CHANGE =
          T.let(
            :apply_change,
            Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

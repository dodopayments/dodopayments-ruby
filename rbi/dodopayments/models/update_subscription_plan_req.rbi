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

      # Addons for the new plan. Note : Leaving this empty would remove any existing
      # addons
      sig { returns(T.nilable(T::Array[Dodopayments::AttachAddon])) }
      attr_accessor :addons

      # Optional discount code to apply to the new plan. If provided, validates and
      # applies the discount to the plan change. If not provided and the subscription
      # has an existing discount with `preserve_on_plan_change=true`, the existing
      # discount will be preserved (if applicable to the new product).
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

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
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
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
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
          discount_code: T.nilable(String),
          effective_at:
            Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::OrSymbol,
          metadata: T.nilable(T::Hash[Symbol, String]),
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
        # Addons for the new plan. Note : Leaving this empty would remove any existing
        # addons
        addons: nil,
        # Optional discount code to apply to the new plan. If provided, validates and
        # applies the discount to the plan change. If not provided and the subscription
        # has an existing discount with `preserve_on_plan_change=true`, the existing
        # discount will be preserved (if applicable to the new product).
        discount_code: nil,
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
            addons: T.nilable(T::Array[Dodopayments::AttachAddon]),
            discount_code: T.nilable(String),
            effective_at:
              Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt::OrSymbol,
            metadata: T.nilable(T::Hash[Symbol, String]),
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

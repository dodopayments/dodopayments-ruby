# typed: strong

module Dodopayments
  module Models
    class SubscriptionChangePlanParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionChangePlanParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique identifier of the product to subscribe to
      sig { returns(String) }
      attr_accessor :product_id

      # Proration Billing Mode
      sig do
        returns(
          Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol
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
            Dodopayments::SubscriptionChangePlanParams::OnPaymentFailure::OrSymbol
          )
        )
      end
      attr_accessor :on_payment_failure

      sig do
        params(
          product_id: String,
          proration_billing_mode:
            Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
          quantity: Integer,
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
          metadata: T.nilable(T::Hash[Symbol, String]),
          on_payment_failure:
            T.nilable(
              Dodopayments::SubscriptionChangePlanParams::OnPaymentFailure::OrSymbol
            ),
          request_options: Dodopayments::RequestOptions::OrHash
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
        on_payment_failure: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product_id: String,
            proration_billing_mode:
              Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
            quantity: Integer,
            addons: T.nilable(T::Array[Dodopayments::AttachAddon]),
            metadata: T.nilable(T::Hash[Symbol, String]),
            on_payment_failure:
              T.nilable(
                Dodopayments::SubscriptionChangePlanParams::OnPaymentFailure::OrSymbol
              ),
            request_options: Dodopayments::RequestOptions
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
              Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::TaggedSymbol
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
              Dodopayments::SubscriptionChangePlanParams::OnPaymentFailure
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREVENT_CHANGE =
          T.let(
            :prevent_change,
            Dodopayments::SubscriptionChangePlanParams::OnPaymentFailure::TaggedSymbol
          )
        APPLY_CHANGE =
          T.let(
            :apply_change,
            Dodopayments::SubscriptionChangePlanParams::OnPaymentFailure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionChangePlanParams::OnPaymentFailure::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

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

      sig do
        params(
          product_id: String,
          proration_billing_mode:
            Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
          quantity: Integer,
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
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
    end
  end
end

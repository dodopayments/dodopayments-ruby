# typed: strong

module Dodopayments
  module Models
    class SubscriptionChangePlanParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Unique identifier of the product to subscribe to
      sig { returns(String) }
      attr_accessor :product_id

      sig { returns(Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol) }
      attr_accessor :proration_billing_mode

      # Number of units to subscribe for. Must be at least 1.
      sig { returns(Integer) }
      attr_accessor :quantity

      # Addons for the new plan. Note : Leaving this empty would remove any existing
      # addons
      sig { returns(T.nilable(T::Array[Dodopayments::Models::SubscriptionChangePlanParams::Addon])) }
      attr_accessor :addons

      sig do
        params(
          product_id: String,
          proration_billing_mode: Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
          quantity: Integer,
          addons: T.nilable(
            T::Array[T.any(Dodopayments::Models::SubscriptionChangePlanParams::Addon, Dodopayments::Internal::AnyHash)]
          ),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the product to subscribe to
        product_id:,
        proration_billing_mode:,
        # Number of units to subscribe for. Must be at least 1.
        quantity:,
        # Addons for the new plan. Note : Leaving this empty would remove any existing
        # addons
        addons: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              product_id: String,
              proration_billing_mode: Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
              quantity: Integer,
              addons: T.nilable(T::Array[Dodopayments::Models::SubscriptionChangePlanParams::Addon]),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end

      module ProrationBillingMode
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode::TaggedSymbol])
        end
        def self.values; end
      end

      class Addon < Dodopayments::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :addon_id

        sig { returns(Integer) }
        attr_accessor :quantity

        sig { params(addon_id: String, quantity: Integer).returns(T.attached_class) }
        def self.new(addon_id:, quantity:); end

        sig { override.returns({addon_id: String, quantity: Integer}) }
        def to_hash; end
      end
    end
  end
end

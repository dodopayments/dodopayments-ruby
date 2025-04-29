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

      sig do
        params(
          product_id: String,
          proration_billing_mode: Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
          quantity: Integer,
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
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              product_id: String,
              proration_billing_mode: Dodopayments::Models::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
              quantity: Integer,
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
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update_payment_method
    class SubscriptionUpdatePaymentMethodParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!attribute payment_method
      #
      #   @return [Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing]
      required :payment_method, union: -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod }

      # @!method initialize(subscription_id:, payment_method:, request_options: {})
      #   @param subscription_id [String]
      #   @param payment_method [Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module PaymentMethod
        extend Dodopayments::Internal::Type::Union

        discriminator :type

        variant :new, -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New }

        variant :existing, -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing }

        class New < Dodopayments::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :new]
          required :type, const: :new

          # @!attribute allowed_payment_method_types
          #   List of payment methods allowed during checkout.
          #
          #   Customers will **never** see payment methods that are **not** in this list.
          #   However, adding a method here **does not guarantee** customers will see it.
          #   Availability still depends on other factors (e.g., customer location, merchant
          #   settings).
          #
          #   @return [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil]
          optional :allowed_payment_method_types,
                   -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::PaymentMethodTypes] },
                   nil?: true

          # @!attribute return_url
          #
          #   @return [String, nil]
          optional :return_url, String, nil?: true

          # @!method initialize(allowed_payment_method_types: nil, return_url: nil, type: :new)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New}
          #   for more details.
          #
          #   @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] List of payment methods allowed during checkout.
          #
          #   @param return_url [String, nil]
          #
          #   @param type [Symbol, :new]
        end

        class Existing < Dodopayments::Internal::Type::BaseModel
          # @!attribute payment_method_id
          #
          #   @return [String]
          required :payment_method_id, String

          # @!attribute type
          #
          #   @return [Symbol, :existing]
          required :type, const: :existing

          # @!method initialize(payment_method_id:, type: :existing)
          #   @param payment_method_id [String]
          #   @param type [Symbol, :existing]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing)]
      end
    end
  end
end

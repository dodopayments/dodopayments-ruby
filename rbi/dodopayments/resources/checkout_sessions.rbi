# typed: strong

module Dodopayments
  module Resources
    class CheckoutSessions
      sig do
        params(
          product_cart:
            T::Array[Dodopayments::CheckoutSessionRequest::ProductCart::OrHash],
          allowed_payment_method_types:
            T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
          billing_address:
            T.nilable(
              Dodopayments::CheckoutSessionRequest::BillingAddress::OrHash
            ),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          confirm: T::Boolean,
          customer:
            T.nilable(
              T.any(
                Dodopayments::AttachExistingCustomer::OrHash,
                Dodopayments::NewCustomer::OrHash
              )
            ),
          customization:
            Dodopayments::CheckoutSessionRequest::Customization::OrHash,
          discount_code: T.nilable(String),
          feature_flags:
            Dodopayments::CheckoutSessionRequest::FeatureFlags::OrHash,
          metadata: T.nilable(T::Hash[Symbol, String]),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          subscription_data:
            T.nilable(
              Dodopayments::CheckoutSessionRequest::SubscriptionData::OrHash
            ),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::CheckoutSessionResponse)
      end
      def create(
        product_cart:,
        # Customers will never see payment methods that are not in this list. However,
        # adding a method here does not guarantee customers will see it. Availability
        # still depends on other factors (e.g., customer location, merchant settings).
        #
        # Disclaimar: Always provide 'credit' and 'debit' as a fallback. If all payment
        # methods are unavailable, checkout session will fail.
        allowed_payment_method_types: nil,
        # Billing address information for the session
        billing_address: nil,
        # This field is ingored if adaptive pricing is disabled
        billing_currency: nil,
        # If confirm is true, all the details will be finalized. If required data is
        # missing, an API error is thrown.
        confirm: nil,
        # Customer details for the session
        customer: nil,
        # Customization for the checkout session page
        customization: nil,
        discount_code: nil,
        feature_flags: nil,
        # Additional metadata associated with the payment. Defaults to empty if not
        # provided.
        metadata: nil,
        # The url to redirect after payment failure or success.
        return_url: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        subscription_data: nil,
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

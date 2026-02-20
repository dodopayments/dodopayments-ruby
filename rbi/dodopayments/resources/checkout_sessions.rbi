# typed: strong

module Dodopayments
  module Resources
    class CheckoutSessions
      sig do
        params(
          product_cart: T::Array[Dodopayments::ProductItemReq::OrHash],
          allowed_payment_method_types:
            T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
          billing_address:
            T.nilable(Dodopayments::CheckoutSessionBillingAddress::OrHash),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          confirm: T::Boolean,
          custom_fields: T.nilable(T::Array[Dodopayments::CustomField::OrHash]),
          customer:
            T.nilable(
              T.any(
                Dodopayments::AttachExistingCustomer::OrHash,
                Dodopayments::NewCustomer::OrHash
              )
            ),
          customization: Dodopayments::CheckoutSessionCustomization::OrHash,
          discount_code: T.nilable(String),
          feature_flags: Dodopayments::CheckoutSessionFlags::OrHash,
          force_3ds: T.nilable(T::Boolean),
          metadata: T.nilable(T::Hash[Symbol, String]),
          minimal_address: T::Boolean,
          payment_method_id: T.nilable(String),
          product_collection_id: T.nilable(String),
          return_url: T.nilable(String),
          short_link: T::Boolean,
          show_saved_payment_methods: T::Boolean,
          subscription_data: T.nilable(Dodopayments::SubscriptionData::OrHash),
          tax_id: T.nilable(String),
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
        # Custom fields to collect from customer during checkout (max 5 fields)
        custom_fields: nil,
        # Customer details for the session
        customer: nil,
        # Customization for the checkout session page
        customization: nil,
        discount_code: nil,
        feature_flags: nil,
        # Override merchant default 3DS behaviour for this session
        force_3ds: nil,
        # Additional metadata associated with the payment. Defaults to empty if not
        # provided.
        metadata: nil,
        # If true, only zipcode is required when confirm is true; other address fields
        # remain optional
        minimal_address: nil,
        # Optional payment method ID to use for this checkout session. Only allowed when
        # `confirm` is true. If provided, existing customer id must also be provided.
        payment_method_id: nil,
        # Product collection ID for collection-based checkout flow
        product_collection_id: nil,
        # The url to redirect after payment failure or success.
        return_url: nil,
        # If true, returns a shortened checkout URL. Defaults to false if not specified.
        short_link: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        subscription_data: nil,
        # Tax ID for the customer (e.g. VAT number). Requires billing_address with
        # country.
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::CheckoutSessionStatus)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          product_cart: T::Array[Dodopayments::ProductItemReq::OrHash],
          allowed_payment_method_types:
            T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
          billing_address:
            T.nilable(Dodopayments::CheckoutSessionBillingAddress::OrHash),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          confirm: T::Boolean,
          custom_fields: T.nilable(T::Array[Dodopayments::CustomField::OrHash]),
          customer:
            T.nilable(
              T.any(
                Dodopayments::AttachExistingCustomer::OrHash,
                Dodopayments::NewCustomer::OrHash
              )
            ),
          customization: Dodopayments::CheckoutSessionCustomization::OrHash,
          discount_code: T.nilable(String),
          feature_flags: Dodopayments::CheckoutSessionFlags::OrHash,
          force_3ds: T.nilable(T::Boolean),
          metadata: T.nilable(T::Hash[Symbol, String]),
          minimal_address: T::Boolean,
          payment_method_id: T.nilable(String),
          product_collection_id: T.nilable(String),
          return_url: T.nilable(String),
          short_link: T::Boolean,
          show_saved_payment_methods: T::Boolean,
          subscription_data: T.nilable(Dodopayments::SubscriptionData::OrHash),
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::CheckoutSessionPreviewResponse)
      end
      def preview(
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
        # Custom fields to collect from customer during checkout (max 5 fields)
        custom_fields: nil,
        # Customer details for the session
        customer: nil,
        # Customization for the checkout session page
        customization: nil,
        discount_code: nil,
        feature_flags: nil,
        # Override merchant default 3DS behaviour for this session
        force_3ds: nil,
        # Additional metadata associated with the payment. Defaults to empty if not
        # provided.
        metadata: nil,
        # If true, only zipcode is required when confirm is true; other address fields
        # remain optional
        minimal_address: nil,
        # Optional payment method ID to use for this checkout session. Only allowed when
        # `confirm` is true. If provided, existing customer id must also be provided.
        payment_method_id: nil,
        # Product collection ID for collection-based checkout flow
        product_collection_id: nil,
        # The url to redirect after payment failure or success.
        return_url: nil,
        # If true, returns a shortened checkout URL. Defaults to false if not specified.
        short_link: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        subscription_data: nil,
        # Tax ID for the customer (e.g. VAT number). Requires billing_address with
        # country.
        tax_id: nil,
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

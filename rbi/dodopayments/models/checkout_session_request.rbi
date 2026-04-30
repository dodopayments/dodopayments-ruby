# typed: strong

module Dodopayments
  module Models
    class CheckoutSessionRequest < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CheckoutSessionRequest,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Dodopayments::ProductItemReq]) }
      attr_accessor :product_cart

      # Customers will never see payment methods that are not in this list. However,
      # adding a method here does not guarantee customers will see it. Availability
      # still depends on other factors (e.g., customer location, merchant settings).
      #
      # Disclaimar: Always provide 'credit' and 'debit' as a fallback. If all payment
      # methods are unavailable, checkout session will fail.
      sig do
        returns(T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]))
      end
      attr_accessor :allowed_payment_method_types

      # Billing address information for the session
      sig { returns(T.nilable(Dodopayments::CheckoutSessionBillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(Dodopayments::CheckoutSessionBillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # This field is ingored if adaptive pricing is disabled
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :billing_currency

      # The URL to redirect the customer if they cancel or go back from the checkout. If
      # not provided, the back button will not be displayed.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancel_url

      # If confirm is true, all the details will be finalized. If required data is
      # missing, an API error is thrown.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :confirm

      sig { params(confirm: T::Boolean).void }
      attr_writer :confirm

      # Custom fields to collect from customer during checkout (max 5 fields)
      sig { returns(T.nilable(T::Array[Dodopayments::CustomField])) }
      attr_accessor :custom_fields

      # Customer details for the session
      sig do
        returns(
          T.nilable(
            T.any(
              Dodopayments::AttachExistingCustomer,
              Dodopayments::NewCustomer
            )
          )
        )
      end
      attr_accessor :customer

      # Customization for the checkout session page
      sig { returns(T.nilable(Dodopayments::CheckoutSessionCustomization)) }
      attr_reader :customization

      sig do
        params(
          customization: Dodopayments::CheckoutSessionCustomization::OrHash
        ).void
      end
      attr_writer :customization

      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      sig { returns(T.nilable(Dodopayments::CheckoutSessionFlags)) }
      attr_reader :feature_flags

      sig do
        params(feature_flags: Dodopayments::CheckoutSessionFlags::OrHash).void
      end
      attr_writer :feature_flags

      # Override merchant default 3DS behaviour for this session
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :force_3ds

      # Override the merchant-level mandate floor (in INR paise) for INR e-mandates on
      # Indian-card recurring payments. The mandate amount sent to the processor is
      # `max(this_floor, actual_billing_amount)`, so this is effectively the
      # customer-facing authorization ceiling whenever billing is lower. When unset, the
      # merchant setting applies; when that's also unset, the system default of ₹15,000
      # applies.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :mandate_min_amount_inr_paise

      # Additional metadata associated with the payment. Defaults to empty if not
      # provided.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # If true, only zipcode is required when confirm is true; other address fields
      # remain optional
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :minimal_address

      sig { params(minimal_address: T::Boolean).void }
      attr_writer :minimal_address

      # Optional payment method ID to use for this checkout session. Only allowed when
      # `confirm` is true. If provided, existing customer id must also be provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # Product collection ID for collection-based checkout flow
      sig { returns(T.nilable(String)) }
      attr_accessor :product_collection_id

      # The url to redirect after payment failure or success.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      # If true, returns a shortened checkout URL. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :short_link

      sig { params(short_link: T::Boolean).void }
      attr_writer :short_link

      # Display saved payment methods of a returning customer False by default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_saved_payment_methods

      sig { params(show_saved_payment_methods: T::Boolean).void }
      attr_writer :show_saved_payment_methods

      sig { returns(T.nilable(Dodopayments::SubscriptionData)) }
      attr_reader :subscription_data

      sig do
        params(
          subscription_data: T.nilable(Dodopayments::SubscriptionData::OrHash)
        ).void
      end
      attr_writer :subscription_data

      # Tax ID for the customer (e.g. VAT number). Requires billing_address with
      # country.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      sig do
        params(
          product_cart: T::Array[Dodopayments::ProductItemReq::OrHash],
          allowed_payment_method_types:
            T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
          billing_address:
            T.nilable(Dodopayments::CheckoutSessionBillingAddress::OrHash),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          cancel_url: T.nilable(String),
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
          mandate_min_amount_inr_paise: T.nilable(Integer),
          metadata: T.nilable(T::Hash[Symbol, String]),
          minimal_address: T::Boolean,
          payment_method_id: T.nilable(String),
          product_collection_id: T.nilable(String),
          return_url: T.nilable(String),
          short_link: T::Boolean,
          show_saved_payment_methods: T::Boolean,
          subscription_data: T.nilable(Dodopayments::SubscriptionData::OrHash),
          tax_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
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
        # The URL to redirect the customer if they cancel or go back from the checkout. If
        # not provided, the back button will not be displayed.
        cancel_url: nil,
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
        # Override the merchant-level mandate floor (in INR paise) for INR e-mandates on
        # Indian-card recurring payments. The mandate amount sent to the processor is
        # `max(this_floor, actual_billing_amount)`, so this is effectively the
        # customer-facing authorization ceiling whenever billing is lower. When unset, the
        # merchant setting applies; when that's also unset, the system default of ₹15,000
        # applies.
        mandate_min_amount_inr_paise: nil,
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
        tax_id: nil
      )
      end

      sig do
        override.returns(
          {
            product_cart: T::Array[Dodopayments::ProductItemReq],
            allowed_payment_method_types:
              T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
            billing_address:
              T.nilable(Dodopayments::CheckoutSessionBillingAddress),
            billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
            cancel_url: T.nilable(String),
            confirm: T::Boolean,
            custom_fields: T.nilable(T::Array[Dodopayments::CustomField]),
            customer:
              T.nilable(
                T.any(
                  Dodopayments::AttachExistingCustomer,
                  Dodopayments::NewCustomer
                )
              ),
            customization: Dodopayments::CheckoutSessionCustomization,
            discount_code: T.nilable(String),
            feature_flags: Dodopayments::CheckoutSessionFlags,
            force_3ds: T.nilable(T::Boolean),
            mandate_min_amount_inr_paise: T.nilable(Integer),
            metadata: T.nilable(T::Hash[Symbol, String]),
            minimal_address: T::Boolean,
            payment_method_id: T.nilable(String),
            product_collection_id: T.nilable(String),
            return_url: T.nilable(String),
            short_link: T::Boolean,
            show_saved_payment_methods: T::Boolean,
            subscription_data: T.nilable(Dodopayments::SubscriptionData),
            tax_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    class CheckoutSessionRequest < Dodopayments::Internal::Type::BaseModel
      # @!attribute product_cart
      #
      #   @return [Array<Dodopayments::Models::ProductItemReq>]
      required :product_cart, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductItemReq] }

      # @!attribute allowed_payment_method_types
      #   Customers will never see payment methods that are not in this list. However,
      #   adding a method here does not guarantee customers will see it. Availability
      #   still depends on other factors (e.g., customer location, merchant settings).
      #
      #   Disclaimar: Always provide 'credit' and 'debit' as a fallback. If all payment
      #   methods are unavailable, checkout session will fail.
      #
      #   @return [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil]
      optional :allowed_payment_method_types,
               -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::PaymentMethodTypes] },
               nil?: true

      # @!attribute billing_address
      #   Billing address information for the session
      #
      #   @return [Dodopayments::Models::CheckoutSessionBillingAddress, nil]
      optional :billing_address, -> { Dodopayments::CheckoutSessionBillingAddress }, nil?: true

      # @!attribute billing_currency
      #   This field is ingored if adaptive pricing is disabled
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :billing_currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute confirm
      #   If confirm is true, all the details will be finalized. If required data is
      #   missing, an API error is thrown.
      #
      #   @return [Boolean, nil]
      optional :confirm, Dodopayments::Internal::Type::Boolean

      # @!attribute custom_fields
      #   Custom fields to collect from customer during checkout (max 5 fields)
      #
      #   @return [Array<Dodopayments::Models::CustomField>, nil]
      optional :custom_fields,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::CustomField] },
               nil?: true

      # @!attribute customer
      #   Customer details for the session
      #
      #   @return [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer, nil]
      optional :customer, union: -> { Dodopayments::CustomerRequest }, nil?: true

      # @!attribute customization
      #   Customization for the checkout session page
      #
      #   @return [Dodopayments::Models::CheckoutSessionCustomization, nil]
      optional :customization, -> { Dodopayments::CheckoutSessionCustomization }

      # @!attribute discount_code
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute feature_flags
      #
      #   @return [Dodopayments::Models::CheckoutSessionFlags, nil]
      optional :feature_flags, -> { Dodopayments::CheckoutSessionFlags }

      # @!attribute force_3ds
      #   Override merchant default 3DS behaviour for this session
      #
      #   @return [Boolean, nil]
      optional :force_3ds, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute metadata
      #   Additional metadata associated with the payment. Defaults to empty if not
      #   provided.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute minimal_address
      #   If true, only zipcode is required when confirm is true; other address fields
      #   remain optional
      #
      #   @return [Boolean, nil]
      optional :minimal_address, Dodopayments::Internal::Type::Boolean

      # @!attribute payment_method_id
      #   Optional payment method ID to use for this checkout session. Only allowed when
      #   `confirm` is true. If provided, existing customer id must also be provided.
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

      # @!attribute product_collection_id
      #   Product collection ID for collection-based checkout flow
      #
      #   @return [String, nil]
      optional :product_collection_id, String, nil?: true

      # @!attribute return_url
      #   The url to redirect after payment failure or success.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute short_link
      #   If true, returns a shortened checkout URL. Defaults to false if not specified.
      #
      #   @return [Boolean, nil]
      optional :short_link, Dodopayments::Internal::Type::Boolean

      # @!attribute show_saved_payment_methods
      #   Display saved payment methods of a returning customer False by default
      #
      #   @return [Boolean, nil]
      optional :show_saved_payment_methods, Dodopayments::Internal::Type::Boolean

      # @!attribute subscription_data
      #
      #   @return [Dodopayments::Models::SubscriptionData, nil]
      optional :subscription_data, -> { Dodopayments::SubscriptionData }, nil?: true

      # @!attribute tax_id
      #   Tax ID for the customer (e.g. VAT number). Requires billing_address with
      #   country.
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(product_cart:, allowed_payment_method_types: nil, billing_address: nil, billing_currency: nil, confirm: nil, custom_fields: nil, customer: nil, customization: nil, discount_code: nil, feature_flags: nil, force_3ds: nil, metadata: nil, minimal_address: nil, payment_method_id: nil, product_collection_id: nil, return_url: nil, short_link: nil, show_saved_payment_methods: nil, subscription_data: nil, tax_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CheckoutSessionRequest} for more details.
      #
      #   @param product_cart [Array<Dodopayments::Models::ProductItemReq>]
      #
      #   @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] Customers will never see payment methods that are not in this list.
      #
      #   @param billing_address [Dodopayments::Models::CheckoutSessionBillingAddress, nil] Billing address information for the session
      #
      #   @param billing_currency [Symbol, Dodopayments::Models::Currency, nil] This field is ingored if adaptive pricing is disabled
      #
      #   @param confirm [Boolean] If confirm is true, all the details will be finalized. If required data is missi
      #
      #   @param custom_fields [Array<Dodopayments::Models::CustomField>, nil] Custom fields to collect from customer during checkout (max 5 fields)
      #
      #   @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer, nil] Customer details for the session
      #
      #   @param customization [Dodopayments::Models::CheckoutSessionCustomization] Customization for the checkout session page
      #
      #   @param discount_code [String, nil]
      #
      #   @param feature_flags [Dodopayments::Models::CheckoutSessionFlags]
      #
      #   @param force_3ds [Boolean, nil] Override merchant default 3DS behaviour for this session
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata associated with the payment. Defaults to empty if not provid
      #
      #   @param minimal_address [Boolean] If true, only zipcode is required when confirm is true; other address fields rem
      #
      #   @param payment_method_id [String, nil] Optional payment method ID to use for this checkout session.
      #
      #   @param product_collection_id [String, nil] Product collection ID for collection-based checkout flow
      #
      #   @param return_url [String, nil] The url to redirect after payment failure or success.
      #
      #   @param short_link [Boolean] If true, returns a shortened checkout URL.
      #
      #   @param show_saved_payment_methods [Boolean] Display saved payment methods of a returning customer False by default
      #
      #   @param subscription_data [Dodopayments::Models::SubscriptionData, nil]
      #
      #   @param tax_id [String, nil] Tax ID for the customer (e.g. VAT number). Requires billing_address with country
    end
  end
end

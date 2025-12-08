# frozen_string_literal: true

module Dodopayments
  module Models
    class CheckoutSessionRequest < Dodopayments::Internal::Type::BaseModel
      # @!attribute product_cart
      #
      #   @return [Array<Dodopayments::Models::CheckoutSessionRequest::ProductCart>]
      required :product_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::CheckoutSessionRequest::ProductCart] }

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
      #   @return [Dodopayments::Models::CheckoutSessionRequest::BillingAddress, nil]
      optional :billing_address, -> { Dodopayments::CheckoutSessionRequest::BillingAddress }, nil?: true

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

      # @!attribute customer
      #   Customer details for the session
      #
      #   @return [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer, nil]
      optional :customer, union: -> { Dodopayments::CustomerRequest }, nil?: true

      # @!attribute customization
      #   Customization for the checkout session page
      #
      #   @return [Dodopayments::Models::CheckoutSessionRequest::Customization, nil]
      optional :customization, -> { Dodopayments::CheckoutSessionRequest::Customization }

      # @!attribute discount_code
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute feature_flags
      #
      #   @return [Dodopayments::Models::CheckoutSessionRequest::FeatureFlags, nil]
      optional :feature_flags, -> { Dodopayments::CheckoutSessionRequest::FeatureFlags }

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

      # @!attribute return_url
      #   The url to redirect after payment failure or success.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute show_saved_payment_methods
      #   Display saved payment methods of a returning customer False by default
      #
      #   @return [Boolean, nil]
      optional :show_saved_payment_methods, Dodopayments::Internal::Type::Boolean

      # @!attribute subscription_data
      #
      #   @return [Dodopayments::Models::CheckoutSessionRequest::SubscriptionData, nil]
      optional :subscription_data, -> { Dodopayments::CheckoutSessionRequest::SubscriptionData }, nil?: true

      # @!method initialize(product_cart:, allowed_payment_method_types: nil, billing_address: nil, billing_currency: nil, confirm: nil, customer: nil, customization: nil, discount_code: nil, feature_flags: nil, force_3ds: nil, metadata: nil, minimal_address: nil, return_url: nil, show_saved_payment_methods: nil, subscription_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CheckoutSessionRequest} for more details.
      #
      #   @param product_cart [Array<Dodopayments::Models::CheckoutSessionRequest::ProductCart>]
      #
      #   @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] Customers will never see payment methods that are not in this list.
      #
      #   @param billing_address [Dodopayments::Models::CheckoutSessionRequest::BillingAddress, nil] Billing address information for the session
      #
      #   @param billing_currency [Symbol, Dodopayments::Models::Currency, nil] This field is ingored if adaptive pricing is disabled
      #
      #   @param confirm [Boolean] If confirm is true, all the details will be finalized. If required data is missi
      #
      #   @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer, nil] Customer details for the session
      #
      #   @param customization [Dodopayments::Models::CheckoutSessionRequest::Customization] Customization for the checkout session page
      #
      #   @param discount_code [String, nil]
      #
      #   @param feature_flags [Dodopayments::Models::CheckoutSessionRequest::FeatureFlags]
      #
      #   @param force_3ds [Boolean, nil] Override merchant default 3DS behaviour for this session
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata associated with the payment. Defaults to empty if not provid
      #
      #   @param minimal_address [Boolean] If true, only zipcode is required when confirm is true; other address fields rem
      #
      #   @param return_url [String, nil] The url to redirect after payment failure or success.
      #
      #   @param show_saved_payment_methods [Boolean] Display saved payment methods of a returning customer False by default
      #
      #   @param subscription_data [Dodopayments::Models::CheckoutSessionRequest::SubscriptionData, nil]

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        # @!attribute product_id
        #   unique id of the product
        #
        #   @return [String]
        required :product_id, String

        # @!attribute quantity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute addons
        #   only valid if product is a subscription
        #
        #   @return [Array<Dodopayments::Models::AttachAddon>, nil]
        optional :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachAddon] }, nil?: true

        # @!attribute amount
        #   Amount the customer pays if pay_what_you_want is enabled. If disabled then
        #   amount will be ignored Represented in the lowest denomination of the currency
        #   (e.g., cents for USD). For example, to charge $1.00, pass `100`. Only applicable
        #   for one time payments
        #
        #   If amount is not set for pay_what_you_want product, customer is allowed to
        #   select the amount.
        #
        #   @return [Integer, nil]
        optional :amount, Integer, nil?: true

        # @!method initialize(product_id:, quantity:, addons: nil, amount: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CheckoutSessionRequest::ProductCart} for more details.
        #
        #   @param product_id [String] unique id of the product
        #
        #   @param quantity [Integer]
        #
        #   @param addons [Array<Dodopayments::Models::AttachAddon>, nil] only valid if product is a subscription
        #
        #   @param amount [Integer, nil] Amount the customer pays if pay_what_you_want is enabled. If disabled then amoun
      end

      # @see Dodopayments::Models::CheckoutSessionRequest#billing_address
      class BillingAddress < Dodopayments::Internal::Type::BaseModel
        # @!attribute country
        #   Two-letter ISO country code (ISO 3166-1 alpha-2)
        #
        #   @return [Symbol, Dodopayments::Models::CountryCode]
        required :country, enum: -> { Dodopayments::CountryCode }

        # @!attribute city
        #   City name
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute state
        #   State or province name
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!attribute street
        #   Street address including house number and unit/apartment if applicable
        #
        #   @return [String, nil]
        optional :street, String, nil?: true

        # @!attribute zipcode
        #   Postal code or ZIP code
        #
        #   @return [String, nil]
        optional :zipcode, String, nil?: true

        # @!method initialize(country:, city: nil, state: nil, street: nil, zipcode: nil)
        #   Billing address information for the session
        #
        #   @param country [Symbol, Dodopayments::Models::CountryCode] Two-letter ISO country code (ISO 3166-1 alpha-2)
        #
        #   @param city [String, nil] City name
        #
        #   @param state [String, nil] State or province name
        #
        #   @param street [String, nil] Street address including house number and unit/apartment if applicable
        #
        #   @param zipcode [String, nil] Postal code or ZIP code
      end

      # @see Dodopayments::Models::CheckoutSessionRequest#customization
      class Customization < Dodopayments::Internal::Type::BaseModel
        # @!attribute force_language
        #   Force the checkout interface to render in a specific language (e.g. `en`, `es`)
        #
        #   @return [String, nil]
        optional :force_language, String, nil?: true

        # @!attribute show_on_demand_tag
        #   Show on demand tag
        #
        #   Default is true
        #
        #   @return [Boolean, nil]
        optional :show_on_demand_tag, Dodopayments::Internal::Type::Boolean

        # @!attribute show_order_details
        #   Show order details by default
        #
        #   Default is true
        #
        #   @return [Boolean, nil]
        optional :show_order_details, Dodopayments::Internal::Type::Boolean

        # @!attribute theme
        #   Theme of the page
        #
        #   Default is `System`.
        #
        #   @return [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::Theme, nil]
        optional :theme, enum: -> { Dodopayments::CheckoutSessionRequest::Customization::Theme }

        # @!method initialize(force_language: nil, show_on_demand_tag: nil, show_order_details: nil, theme: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CheckoutSessionRequest::Customization} for more details.
        #
        #   Customization for the checkout session page
        #
        #   @param force_language [String, nil] Force the checkout interface to render in a specific language (e.g. `en`, `es`)
        #
        #   @param show_on_demand_tag [Boolean] Show on demand tag
        #
        #   @param show_order_details [Boolean] Show order details by default
        #
        #   @param theme [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::Theme] Theme of the page

        # Theme of the page
        #
        # Default is `System`.
        #
        # @see Dodopayments::Models::CheckoutSessionRequest::Customization#theme
        module Theme
          extend Dodopayments::Internal::Type::Enum

          DARK = :dark
          LIGHT = :light
          SYSTEM = :system

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Dodopayments::Models::CheckoutSessionRequest#feature_flags
      class FeatureFlags < Dodopayments::Internal::Type::BaseModel
        # @!attribute allow_currency_selection
        #   if customer is allowed to change currency, set it to true
        #
        #   Default is true
        #
        #   @return [Boolean, nil]
        optional :allow_currency_selection, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_customer_editing_city
        #
        #   @return [Boolean, nil]
        optional :allow_customer_editing_city, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_customer_editing_country
        #
        #   @return [Boolean, nil]
        optional :allow_customer_editing_country, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_customer_editing_email
        #
        #   @return [Boolean, nil]
        optional :allow_customer_editing_email, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_customer_editing_name
        #
        #   @return [Boolean, nil]
        optional :allow_customer_editing_name, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_customer_editing_state
        #
        #   @return [Boolean, nil]
        optional :allow_customer_editing_state, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_customer_editing_street
        #
        #   @return [Boolean, nil]
        optional :allow_customer_editing_street, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_customer_editing_zipcode
        #
        #   @return [Boolean, nil]
        optional :allow_customer_editing_zipcode, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_discount_code
        #   If the customer is allowed to apply discount code, set it to true.
        #
        #   Default is true
        #
        #   @return [Boolean, nil]
        optional :allow_discount_code, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_phone_number_collection
        #   If phone number is collected from customer, set it to rue
        #
        #   Default is true
        #
        #   @return [Boolean, nil]
        optional :allow_phone_number_collection, Dodopayments::Internal::Type::Boolean

        # @!attribute allow_tax_id
        #   If the customer is allowed to add tax id, set it to true
        #
        #   Default is true
        #
        #   @return [Boolean, nil]
        optional :allow_tax_id, Dodopayments::Internal::Type::Boolean

        # @!attribute always_create_new_customer
        #   Set to true if a new customer object should be created. By default email is used
        #   to find an existing customer to attach the session to
        #
        #   Default is false
        #
        #   @return [Boolean, nil]
        optional :always_create_new_customer, Dodopayments::Internal::Type::Boolean

        # @!method initialize(allow_currency_selection: nil, allow_customer_editing_city: nil, allow_customer_editing_country: nil, allow_customer_editing_email: nil, allow_customer_editing_name: nil, allow_customer_editing_state: nil, allow_customer_editing_street: nil, allow_customer_editing_zipcode: nil, allow_discount_code: nil, allow_phone_number_collection: nil, allow_tax_id: nil, always_create_new_customer: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CheckoutSessionRequest::FeatureFlags} for more details.
        #
        #   @param allow_currency_selection [Boolean] if customer is allowed to change currency, set it to true
        #
        #   @param allow_customer_editing_city [Boolean]
        #
        #   @param allow_customer_editing_country [Boolean]
        #
        #   @param allow_customer_editing_email [Boolean]
        #
        #   @param allow_customer_editing_name [Boolean]
        #
        #   @param allow_customer_editing_state [Boolean]
        #
        #   @param allow_customer_editing_street [Boolean]
        #
        #   @param allow_customer_editing_zipcode [Boolean]
        #
        #   @param allow_discount_code [Boolean] If the customer is allowed to apply discount code, set it to true.
        #
        #   @param allow_phone_number_collection [Boolean] If phone number is collected from customer, set it to rue
        #
        #   @param allow_tax_id [Boolean] If the customer is allowed to add tax id, set it to true
        #
        #   @param always_create_new_customer [Boolean] Set to true if a new customer object should be created.
      end

      # @see Dodopayments::Models::CheckoutSessionRequest#subscription_data
      class SubscriptionData < Dodopayments::Internal::Type::BaseModel
        # @!attribute on_demand
        #
        #   @return [Dodopayments::Models::OnDemandSubscription, nil]
        optional :on_demand, -> { Dodopayments::OnDemandSubscription }, nil?: true

        # @!attribute trial_period_days
        #   Optional trial period in days If specified, this value overrides the trial
        #   period set in the product's price Must be between 0 and 10000 days
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer, nil?: true

        # @!method initialize(on_demand: nil, trial_period_days: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CheckoutSessionRequest::SubscriptionData} for more
        #   details.
        #
        #   @param on_demand [Dodopayments::Models::OnDemandSubscription, nil]
        #
        #   @param trial_period_days [Integer, nil] Optional trial period in days If specified, this value overrides the trial perio
      end
    end
  end
end

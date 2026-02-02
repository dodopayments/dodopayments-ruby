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

      # @!attribute custom_fields
      #   Custom fields to collect from customer during checkout (max 5 fields)
      #
      #   @return [Array<Dodopayments::Models::CheckoutSessionRequest::CustomField>, nil]
      optional :custom_fields,
               -> {
                 Dodopayments::Internal::Type::ArrayOf[Dodopayments::CheckoutSessionRequest::CustomField]
               },
               nil?: true

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
      #   @return [Dodopayments::Models::CheckoutSessionRequest::SubscriptionData, nil]
      optional :subscription_data, -> { Dodopayments::CheckoutSessionRequest::SubscriptionData }, nil?: true

      # @!method initialize(product_cart:, allowed_payment_method_types: nil, billing_address: nil, billing_currency: nil, confirm: nil, custom_fields: nil, customer: nil, customization: nil, discount_code: nil, feature_flags: nil, force_3ds: nil, metadata: nil, minimal_address: nil, payment_method_id: nil, product_collection_id: nil, return_url: nil, short_link: nil, show_saved_payment_methods: nil, subscription_data: nil)
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
      #   @param custom_fields [Array<Dodopayments::Models::CheckoutSessionRequest::CustomField>, nil] Custom fields to collect from customer during checkout (max 5 fields)
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

      class CustomField < Dodopayments::Internal::Type::BaseModel
        # @!attribute field_type
        #   Type of field determining validation rules
        #
        #   @return [Symbol, Dodopayments::Models::CheckoutSessionRequest::CustomField::FieldType]
        required :field_type, enum: -> { Dodopayments::CheckoutSessionRequest::CustomField::FieldType }

        # @!attribute key
        #   Unique identifier for this field (used as key in responses)
        #
        #   @return [String]
        required :key, String

        # @!attribute label
        #   Display label shown to customer
        #
        #   @return [String]
        required :label, String

        # @!attribute options
        #   Options for dropdown type (required for dropdown, ignored for others)
        #
        #   @return [Array<String>, nil]
        optional :options, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute placeholder
        #   Placeholder text for the input
        #
        #   @return [String, nil]
        optional :placeholder, String, nil?: true

        # @!attribute required
        #   Whether this field is required
        #
        #   @return [Boolean, nil]
        optional :required, Dodopayments::Internal::Type::Boolean

        # @!method initialize(field_type:, key:, label:, options: nil, placeholder: nil, required: nil)
        #   Definition of a custom field for checkout
        #
        #   @param field_type [Symbol, Dodopayments::Models::CheckoutSessionRequest::CustomField::FieldType] Type of field determining validation rules
        #
        #   @param key [String] Unique identifier for this field (used as key in responses)
        #
        #   @param label [String] Display label shown to customer
        #
        #   @param options [Array<String>, nil] Options for dropdown type (required for dropdown, ignored for others)
        #
        #   @param placeholder [String, nil] Placeholder text for the input
        #
        #   @param required [Boolean] Whether this field is required

        # Type of field determining validation rules
        #
        # @see Dodopayments::Models::CheckoutSessionRequest::CustomField#field_type
        module FieldType
          extend Dodopayments::Internal::Type::Enum

          TEXT = :text
          NUMBER = :number
          EMAIL = :email
          URL = :url
          DATE = :date
          DROPDOWN = :dropdown
          BOOLEAN = :boolean

          # @!method self.values
          #   @return [Array<Symbol>]
        end
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
        #   Theme of the page (determines which mode - light/dark/system - to use)
        #
        #   Default is `System`.
        #
        #   @return [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::Theme, nil]
        optional :theme, enum: -> { Dodopayments::CheckoutSessionRequest::Customization::Theme }

        # @!attribute theme_config
        #   Optional custom theme configuration with colors for light and dark modes
        #
        #   @return [Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig, nil]
        optional :theme_config,
                 -> { Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig },
                 nil?: true

        # @!method initialize(force_language: nil, show_on_demand_tag: nil, show_order_details: nil, theme: nil, theme_config: nil)
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
        #   @param theme [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::Theme] Theme of the page (determines which mode - light/dark/system - to use)
        #
        #   @param theme_config [Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig, nil] Optional custom theme configuration with colors for light and dark modes

        # Theme of the page (determines which mode - light/dark/system - to use)
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

        # @see Dodopayments::Models::CheckoutSessionRequest::Customization#theme_config
        class ThemeConfig < Dodopayments::Internal::Type::BaseModel
          # @!attribute dark
          #   Dark mode color configuration
          #
          #   @return [Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::Dark, nil]
          optional :dark,
                   -> {
                     Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Dark
                   },
                   nil?: true

          # @!attribute font_size
          #   Font size for the checkout UI
          #
          #   @return [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::FontSize, nil]
          optional :font_size,
                   enum: -> { Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize },
                   nil?: true

          # @!attribute font_weight
          #   Font weight for the checkout UI
          #
          #   @return [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight, nil]
          optional :font_weight,
                   enum: -> { Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight },
                   nil?: true

          # @!attribute light
          #   Light mode color configuration
          #
          #   @return [Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::Light, nil]
          optional :light,
                   -> { Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Light },
                   nil?: true

          # @!attribute pay_button_text
          #   Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now")
          #
          #   @return [String, nil]
          optional :pay_button_text, String, nil?: true

          # @!attribute radius
          #   Border radius for UI elements (e.g., "4px", "0.5rem", "8px")
          #
          #   @return [String, nil]
          optional :radius, String, nil?: true

          # @!method initialize(dark: nil, font_size: nil, font_weight: nil, light: nil, pay_button_text: nil, radius: nil)
          #   Optional custom theme configuration with colors for light and dark modes
          #
          #   @param dark [Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::Dark, nil] Dark mode color configuration
          #
          #   @param font_size [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::FontSize, nil] Font size for the checkout UI
          #
          #   @param font_weight [Symbol, Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight, nil] Font weight for the checkout UI
          #
          #   @param light [Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::Light, nil] Light mode color configuration
          #
          #   @param pay_button_text [String, nil] Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now")
          #
          #   @param radius [String, nil] Border radius for UI elements (e.g., "4px", "0.5rem", "8px")

          # @see Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig#dark
          class Dark < Dodopayments::Internal::Type::BaseModel
            # @!attribute bg_primary
            #   Background primary color
            #
            #   Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
            #
            #   @return [String, nil]
            optional :bg_primary, String, nil?: true

            # @!attribute bg_secondary
            #   Background secondary color
            #
            #   @return [String, nil]
            optional :bg_secondary, String, nil?: true

            # @!attribute border_primary
            #   Border primary color
            #
            #   @return [String, nil]
            optional :border_primary, String, nil?: true

            # @!attribute border_secondary
            #   Border secondary color
            #
            #   @return [String, nil]
            optional :border_secondary, String, nil?: true

            # @!attribute button_primary
            #   Primary button background color
            #
            #   @return [String, nil]
            optional :button_primary, String, nil?: true

            # @!attribute button_primary_hover
            #   Primary button hover color
            #
            #   @return [String, nil]
            optional :button_primary_hover, String, nil?: true

            # @!attribute button_secondary
            #   Secondary button background color
            #
            #   @return [String, nil]
            optional :button_secondary, String, nil?: true

            # @!attribute button_secondary_hover
            #   Secondary button hover color
            #
            #   @return [String, nil]
            optional :button_secondary_hover, String, nil?: true

            # @!attribute button_text_primary
            #   Primary button text color
            #
            #   @return [String, nil]
            optional :button_text_primary, String, nil?: true

            # @!attribute button_text_secondary
            #   Secondary button text color
            #
            #   @return [String, nil]
            optional :button_text_secondary, String, nil?: true

            # @!attribute input_focus_border
            #   Input focus border color
            #
            #   @return [String, nil]
            optional :input_focus_border, String, nil?: true

            # @!attribute text_error
            #   Text error color
            #
            #   @return [String, nil]
            optional :text_error, String, nil?: true

            # @!attribute text_placeholder
            #   Text placeholder color
            #
            #   @return [String, nil]
            optional :text_placeholder, String, nil?: true

            # @!attribute text_primary
            #   Text primary color
            #
            #   @return [String, nil]
            optional :text_primary, String, nil?: true

            # @!attribute text_secondary
            #   Text secondary color
            #
            #   @return [String, nil]
            optional :text_secondary, String, nil?: true

            # @!attribute text_success
            #   Text success color
            #
            #   @return [String, nil]
            optional :text_success, String, nil?: true

            # @!method initialize(bg_primary: nil, bg_secondary: nil, border_primary: nil, border_secondary: nil, button_primary: nil, button_primary_hover: nil, button_secondary: nil, button_secondary_hover: nil, button_text_primary: nil, button_text_secondary: nil, input_focus_border: nil, text_error: nil, text_placeholder: nil, text_primary: nil, text_secondary: nil, text_success: nil)
            #   Some parameter documentations has been truncated, see
            #   {Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::Dark}
            #   for more details.
            #
            #   Dark mode color configuration
            #
            #   @param bg_primary [String, nil] Background primary color
            #
            #   @param bg_secondary [String, nil] Background secondary color
            #
            #   @param border_primary [String, nil] Border primary color
            #
            #   @param border_secondary [String, nil] Border secondary color
            #
            #   @param button_primary [String, nil] Primary button background color
            #
            #   @param button_primary_hover [String, nil] Primary button hover color
            #
            #   @param button_secondary [String, nil] Secondary button background color
            #
            #   @param button_secondary_hover [String, nil] Secondary button hover color
            #
            #   @param button_text_primary [String, nil] Primary button text color
            #
            #   @param button_text_secondary [String, nil] Secondary button text color
            #
            #   @param input_focus_border [String, nil] Input focus border color
            #
            #   @param text_error [String, nil] Text error color
            #
            #   @param text_placeholder [String, nil] Text placeholder color
            #
            #   @param text_primary [String, nil] Text primary color
            #
            #   @param text_secondary [String, nil] Text secondary color
            #
            #   @param text_success [String, nil] Text success color
          end

          # Font size for the checkout UI
          #
          # @see Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig#font_size
          module FontSize
            extend Dodopayments::Internal::Type::Enum

            XS = :xs
            SM = :sm
            MD = :md
            LG = :lg
            XL = :xl
            FONT_SIZE_2XL = :"2xl"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Font weight for the checkout UI
          #
          # @see Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig#font_weight
          module FontWeight
            extend Dodopayments::Internal::Type::Enum

            NORMAL = :normal
            MEDIUM = :medium
            BOLD = :bold
            EXTRA_BOLD = :extraBold

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig#light
          class Light < Dodopayments::Internal::Type::BaseModel
            # @!attribute bg_primary
            #   Background primary color
            #
            #   Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
            #
            #   @return [String, nil]
            optional :bg_primary, String, nil?: true

            # @!attribute bg_secondary
            #   Background secondary color
            #
            #   @return [String, nil]
            optional :bg_secondary, String, nil?: true

            # @!attribute border_primary
            #   Border primary color
            #
            #   @return [String, nil]
            optional :border_primary, String, nil?: true

            # @!attribute border_secondary
            #   Border secondary color
            #
            #   @return [String, nil]
            optional :border_secondary, String, nil?: true

            # @!attribute button_primary
            #   Primary button background color
            #
            #   @return [String, nil]
            optional :button_primary, String, nil?: true

            # @!attribute button_primary_hover
            #   Primary button hover color
            #
            #   @return [String, nil]
            optional :button_primary_hover, String, nil?: true

            # @!attribute button_secondary
            #   Secondary button background color
            #
            #   @return [String, nil]
            optional :button_secondary, String, nil?: true

            # @!attribute button_secondary_hover
            #   Secondary button hover color
            #
            #   @return [String, nil]
            optional :button_secondary_hover, String, nil?: true

            # @!attribute button_text_primary
            #   Primary button text color
            #
            #   @return [String, nil]
            optional :button_text_primary, String, nil?: true

            # @!attribute button_text_secondary
            #   Secondary button text color
            #
            #   @return [String, nil]
            optional :button_text_secondary, String, nil?: true

            # @!attribute input_focus_border
            #   Input focus border color
            #
            #   @return [String, nil]
            optional :input_focus_border, String, nil?: true

            # @!attribute text_error
            #   Text error color
            #
            #   @return [String, nil]
            optional :text_error, String, nil?: true

            # @!attribute text_placeholder
            #   Text placeholder color
            #
            #   @return [String, nil]
            optional :text_placeholder, String, nil?: true

            # @!attribute text_primary
            #   Text primary color
            #
            #   @return [String, nil]
            optional :text_primary, String, nil?: true

            # @!attribute text_secondary
            #   Text secondary color
            #
            #   @return [String, nil]
            optional :text_secondary, String, nil?: true

            # @!attribute text_success
            #   Text success color
            #
            #   @return [String, nil]
            optional :text_success, String, nil?: true

            # @!method initialize(bg_primary: nil, bg_secondary: nil, border_primary: nil, border_secondary: nil, button_primary: nil, button_primary_hover: nil, button_secondary: nil, button_secondary_hover: nil, button_text_primary: nil, button_text_secondary: nil, input_focus_border: nil, text_error: nil, text_placeholder: nil, text_primary: nil, text_secondary: nil, text_success: nil)
            #   Some parameter documentations has been truncated, see
            #   {Dodopayments::Models::CheckoutSessionRequest::Customization::ThemeConfig::Light}
            #   for more details.
            #
            #   Light mode color configuration
            #
            #   @param bg_primary [String, nil] Background primary color
            #
            #   @param bg_secondary [String, nil] Background secondary color
            #
            #   @param border_primary [String, nil] Border primary color
            #
            #   @param border_secondary [String, nil] Border secondary color
            #
            #   @param button_primary [String, nil] Primary button background color
            #
            #   @param button_primary_hover [String, nil] Primary button hover color
            #
            #   @param button_secondary [String, nil] Secondary button background color
            #
            #   @param button_secondary_hover [String, nil] Secondary button hover color
            #
            #   @param button_text_primary [String, nil] Primary button text color
            #
            #   @param button_text_secondary [String, nil] Secondary button text color
            #
            #   @param input_focus_border [String, nil] Input focus border color
            #
            #   @param text_error [String, nil] Text error color
            #
            #   @param text_placeholder [String, nil] Text placeholder color
            #
            #   @param text_primary [String, nil] Text primary color
            #
            #   @param text_secondary [String, nil] Text secondary color
            #
            #   @param text_success [String, nil] Text success color
          end
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

        # @!attribute redirect_immediately
        #   If true, redirects the customer immediately after payment completion
        #
        #   Default is false
        #
        #   @return [Boolean, nil]
        optional :redirect_immediately, Dodopayments::Internal::Type::Boolean

        # @!method initialize(allow_currency_selection: nil, allow_customer_editing_city: nil, allow_customer_editing_country: nil, allow_customer_editing_email: nil, allow_customer_editing_name: nil, allow_customer_editing_state: nil, allow_customer_editing_street: nil, allow_customer_editing_zipcode: nil, allow_discount_code: nil, allow_phone_number_collection: nil, allow_tax_id: nil, always_create_new_customer: nil, redirect_immediately: nil)
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
        #
        #   @param redirect_immediately [Boolean] If true, redirects the customer immediately after payment completion
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

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

      sig do
        returns(T::Array[Dodopayments::CheckoutSessionRequest::ProductCart])
      end
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
      sig do
        returns(T.nilable(Dodopayments::CheckoutSessionRequest::BillingAddress))
      end
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(
              Dodopayments::CheckoutSessionRequest::BillingAddress::OrHash
            )
        ).void
      end
      attr_writer :billing_address

      # This field is ingored if adaptive pricing is disabled
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :billing_currency

      # If confirm is true, all the details will be finalized. If required data is
      # missing, an API error is thrown.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :confirm

      sig { params(confirm: T::Boolean).void }
      attr_writer :confirm

      # Custom fields to collect from customer during checkout (max 5 fields)
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::CheckoutSessionRequest::CustomField])
        )
      end
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
      sig do
        returns(T.nilable(Dodopayments::CheckoutSessionRequest::Customization))
      end
      attr_reader :customization

      sig do
        params(
          customization:
            Dodopayments::CheckoutSessionRequest::Customization::OrHash
        ).void
      end
      attr_writer :customization

      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      sig do
        returns(T.nilable(Dodopayments::CheckoutSessionRequest::FeatureFlags))
      end
      attr_reader :feature_flags

      sig do
        params(
          feature_flags:
            Dodopayments::CheckoutSessionRequest::FeatureFlags::OrHash
        ).void
      end
      attr_writer :feature_flags

      # Override merchant default 3DS behaviour for this session
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :force_3ds

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

      sig do
        returns(
          T.nilable(Dodopayments::CheckoutSessionRequest::SubscriptionData)
        )
      end
      attr_reader :subscription_data

      sig do
        params(
          subscription_data:
            T.nilable(
              Dodopayments::CheckoutSessionRequest::SubscriptionData::OrHash
            )
        ).void
      end
      attr_writer :subscription_data

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
          custom_fields:
            T.nilable(
              T::Array[
                Dodopayments::CheckoutSessionRequest::CustomField::OrHash
              ]
            ),
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
          force_3ds: T.nilable(T::Boolean),
          metadata: T.nilable(T::Hash[Symbol, String]),
          minimal_address: T::Boolean,
          payment_method_id: T.nilable(String),
          product_collection_id: T.nilable(String),
          return_url: T.nilable(String),
          short_link: T::Boolean,
          show_saved_payment_methods: T::Boolean,
          subscription_data:
            T.nilable(
              Dodopayments::CheckoutSessionRequest::SubscriptionData::OrHash
            )
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
        subscription_data: nil
      )
      end

      sig do
        override.returns(
          {
            product_cart:
              T::Array[Dodopayments::CheckoutSessionRequest::ProductCart],
            allowed_payment_method_types:
              T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
            billing_address:
              T.nilable(Dodopayments::CheckoutSessionRequest::BillingAddress),
            billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
            confirm: T::Boolean,
            custom_fields:
              T.nilable(
                T::Array[Dodopayments::CheckoutSessionRequest::CustomField]
              ),
            customer:
              T.nilable(
                T.any(
                  Dodopayments::AttachExistingCustomer,
                  Dodopayments::NewCustomer
                )
              ),
            customization: Dodopayments::CheckoutSessionRequest::Customization,
            discount_code: T.nilable(String),
            feature_flags: Dodopayments::CheckoutSessionRequest::FeatureFlags,
            force_3ds: T.nilable(T::Boolean),
            metadata: T.nilable(T::Hash[Symbol, String]),
            minimal_address: T::Boolean,
            payment_method_id: T.nilable(String),
            product_collection_id: T.nilable(String),
            return_url: T.nilable(String),
            short_link: T::Boolean,
            show_saved_payment_methods: T::Boolean,
            subscription_data:
              T.nilable(Dodopayments::CheckoutSessionRequest::SubscriptionData)
          }
        )
      end
      def to_hash
      end

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CheckoutSessionRequest::ProductCart,
              Dodopayments::Internal::AnyHash
            )
          end

        # unique id of the product
        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Integer) }
        attr_accessor :quantity

        # only valid if product is a subscription
        sig { returns(T.nilable(T::Array[Dodopayments::AttachAddon])) }
        attr_accessor :addons

        # Amount the customer pays if pay_what_you_want is enabled. If disabled then
        # amount will be ignored Represented in the lowest denomination of the currency
        # (e.g., cents for USD). For example, to charge $1.00, pass `100`. Only applicable
        # for one time payments
        #
        # If amount is not set for pay_what_you_want product, customer is allowed to
        # select the amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount

        sig do
          params(
            product_id: String,
            quantity: Integer,
            addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
            amount: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # unique id of the product
          product_id:,
          quantity:,
          # only valid if product is a subscription
          addons: nil,
          # Amount the customer pays if pay_what_you_want is enabled. If disabled then
          # amount will be ignored Represented in the lowest denomination of the currency
          # (e.g., cents for USD). For example, to charge $1.00, pass `100`. Only applicable
          # for one time payments
          #
          # If amount is not set for pay_what_you_want product, customer is allowed to
          # select the amount.
          amount: nil
        )
        end

        sig do
          override.returns(
            {
              product_id: String,
              quantity: Integer,
              addons: T.nilable(T::Array[Dodopayments::AttachAddon]),
              amount: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end

      class BillingAddress < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CheckoutSessionRequest::BillingAddress,
              Dodopayments::Internal::AnyHash
            )
          end

        # Two-letter ISO country code (ISO 3166-1 alpha-2)
        sig { returns(Dodopayments::CountryCode::OrSymbol) }
        attr_accessor :country

        # City name
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # State or province name
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # Street address including house number and unit/apartment if applicable
        sig { returns(T.nilable(String)) }
        attr_accessor :street

        # Postal code or ZIP code
        sig { returns(T.nilable(String)) }
        attr_accessor :zipcode

        # Billing address information for the session
        sig do
          params(
            country: Dodopayments::CountryCode::OrSymbol,
            city: T.nilable(String),
            state: T.nilable(String),
            street: T.nilable(String),
            zipcode: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Two-letter ISO country code (ISO 3166-1 alpha-2)
          country:,
          # City name
          city: nil,
          # State or province name
          state: nil,
          # Street address including house number and unit/apartment if applicable
          street: nil,
          # Postal code or ZIP code
          zipcode: nil
        )
        end

        sig do
          override.returns(
            {
              country: Dodopayments::CountryCode::OrSymbol,
              city: T.nilable(String),
              state: T.nilable(String),
              street: T.nilable(String),
              zipcode: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class CustomField < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CheckoutSessionRequest::CustomField,
              Dodopayments::Internal::AnyHash
            )
          end

        # Type of field determining validation rules
        sig do
          returns(
            Dodopayments::CheckoutSessionRequest::CustomField::FieldType::OrSymbol
          )
        end
        attr_accessor :field_type

        # Unique identifier for this field (used as key in responses)
        sig { returns(String) }
        attr_accessor :key

        # Display label shown to customer
        sig { returns(String) }
        attr_accessor :label

        # Options for dropdown type (required for dropdown, ignored for others)
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :options

        # Placeholder text for the input
        sig { returns(T.nilable(String)) }
        attr_accessor :placeholder

        # Whether this field is required
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :required

        sig { params(required: T::Boolean).void }
        attr_writer :required

        # Definition of a custom field for checkout
        sig do
          params(
            field_type:
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::OrSymbol,
            key: String,
            label: String,
            options: T.nilable(T::Array[String]),
            placeholder: T.nilable(String),
            required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of field determining validation rules
          field_type:,
          # Unique identifier for this field (used as key in responses)
          key:,
          # Display label shown to customer
          label:,
          # Options for dropdown type (required for dropdown, ignored for others)
          options: nil,
          # Placeholder text for the input
          placeholder: nil,
          # Whether this field is required
          required: nil
        )
        end

        sig do
          override.returns(
            {
              field_type:
                Dodopayments::CheckoutSessionRequest::CustomField::FieldType::OrSymbol,
              key: String,
              label: String,
              options: T.nilable(T::Array[String]),
              placeholder: T.nilable(String),
              required: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Type of field determining validation rules
        module FieldType
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::CheckoutSessionRequest::CustomField::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :email,
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
            )
          URL =
            T.let(
              :url,
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
            )
          DROPDOWN =
            T.let(
              :dropdown,
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
            )
          BOOLEAN =
            T.let(
              :boolean,
              Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::CheckoutSessionRequest::CustomField::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Customization < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CheckoutSessionRequest::Customization,
              Dodopayments::Internal::AnyHash
            )
          end

        # Force the checkout interface to render in a specific language (e.g. `en`, `es`)
        sig { returns(T.nilable(String)) }
        attr_accessor :force_language

        # Show on demand tag
        #
        # Default is true
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_on_demand_tag

        sig { params(show_on_demand_tag: T::Boolean).void }
        attr_writer :show_on_demand_tag

        # Show order details by default
        #
        # Default is true
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_order_details

        sig { params(show_order_details: T::Boolean).void }
        attr_writer :show_order_details

        # Theme of the page (determines which mode - light/dark/system - to use)
        #
        # Default is `System`.
        sig do
          returns(
            T.nilable(
              Dodopayments::CheckoutSessionRequest::Customization::Theme::OrSymbol
            )
          )
        end
        attr_reader :theme

        sig do
          params(
            theme:
              Dodopayments::CheckoutSessionRequest::Customization::Theme::OrSymbol
          ).void
        end
        attr_writer :theme

        # Optional custom theme configuration with colors for light and dark modes
        sig do
          returns(
            T.nilable(
              Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig
            )
          )
        end
        attr_reader :theme_config

        sig do
          params(
            theme_config:
              T.nilable(
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::OrHash
              )
          ).void
        end
        attr_writer :theme_config

        # Customization for the checkout session page
        sig do
          params(
            force_language: T.nilable(String),
            show_on_demand_tag: T::Boolean,
            show_order_details: T::Boolean,
            theme:
              Dodopayments::CheckoutSessionRequest::Customization::Theme::OrSymbol,
            theme_config:
              T.nilable(
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Force the checkout interface to render in a specific language (e.g. `en`, `es`)
          force_language: nil,
          # Show on demand tag
          #
          # Default is true
          show_on_demand_tag: nil,
          # Show order details by default
          #
          # Default is true
          show_order_details: nil,
          # Theme of the page (determines which mode - light/dark/system - to use)
          #
          # Default is `System`.
          theme: nil,
          # Optional custom theme configuration with colors for light and dark modes
          theme_config: nil
        )
        end

        sig do
          override.returns(
            {
              force_language: T.nilable(String),
              show_on_demand_tag: T::Boolean,
              show_order_details: T::Boolean,
              theme:
                Dodopayments::CheckoutSessionRequest::Customization::Theme::OrSymbol,
              theme_config:
                T.nilable(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig
                )
            }
          )
        end
        def to_hash
        end

        # Theme of the page (determines which mode - light/dark/system - to use)
        #
        # Default is `System`.
        module Theme
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::CheckoutSessionRequest::Customization::Theme
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DARK =
            T.let(
              :dark,
              Dodopayments::CheckoutSessionRequest::Customization::Theme::TaggedSymbol
            )
          LIGHT =
            T.let(
              :light,
              Dodopayments::CheckoutSessionRequest::Customization::Theme::TaggedSymbol
            )
          SYSTEM =
            T.let(
              :system,
              Dodopayments::CheckoutSessionRequest::Customization::Theme::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::CheckoutSessionRequest::Customization::Theme::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ThemeConfig < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig,
                Dodopayments::Internal::AnyHash
              )
            end

          # Dark mode color configuration
          sig do
            returns(
              T.nilable(
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Dark
              )
            )
          end
          attr_reader :dark

          sig do
            params(
              dark:
                T.nilable(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Dark::OrHash
                )
            ).void
          end
          attr_writer :dark

          # Font size for the checkout UI
          sig do
            returns(
              T.nilable(
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::OrSymbol
              )
            )
          end
          attr_accessor :font_size

          # Font weight for the checkout UI
          sig do
            returns(
              T.nilable(
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::OrSymbol
              )
            )
          end
          attr_accessor :font_weight

          # Light mode color configuration
          sig do
            returns(
              T.nilable(
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Light
              )
            )
          end
          attr_reader :light

          sig do
            params(
              light:
                T.nilable(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Light::OrHash
                )
            ).void
          end
          attr_writer :light

          # Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now")
          sig { returns(T.nilable(String)) }
          attr_accessor :pay_button_text

          # Border radius for UI elements (e.g., "4px", "0.5rem", "8px")
          sig { returns(T.nilable(String)) }
          attr_accessor :radius

          # Optional custom theme configuration with colors for light and dark modes
          sig do
            params(
              dark:
                T.nilable(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Dark::OrHash
                ),
              font_size:
                T.nilable(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::OrSymbol
                ),
              font_weight:
                T.nilable(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::OrSymbol
                ),
              light:
                T.nilable(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Light::OrHash
                ),
              pay_button_text: T.nilable(String),
              radius: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Dark mode color configuration
            dark: nil,
            # Font size for the checkout UI
            font_size: nil,
            # Font weight for the checkout UI
            font_weight: nil,
            # Light mode color configuration
            light: nil,
            # Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now")
            pay_button_text: nil,
            # Border radius for UI elements (e.g., "4px", "0.5rem", "8px")
            radius: nil
          )
          end

          sig do
            override.returns(
              {
                dark:
                  T.nilable(
                    Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Dark
                  ),
                font_size:
                  T.nilable(
                    Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::OrSymbol
                  ),
                font_weight:
                  T.nilable(
                    Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::OrSymbol
                  ),
                light:
                  T.nilable(
                    Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Light
                  ),
                pay_button_text: T.nilable(String),
                radius: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Dark < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Dark,
                  Dodopayments::Internal::AnyHash
                )
              end

            # Background primary color
            #
            # Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
            sig { returns(T.nilable(String)) }
            attr_accessor :bg_primary

            # Background secondary color
            sig { returns(T.nilable(String)) }
            attr_accessor :bg_secondary

            # Border primary color
            sig { returns(T.nilable(String)) }
            attr_accessor :border_primary

            # Border secondary color
            sig { returns(T.nilable(String)) }
            attr_accessor :border_secondary

            # Primary button background color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_primary

            # Primary button hover color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_primary_hover

            # Secondary button background color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_secondary

            # Secondary button hover color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_secondary_hover

            # Primary button text color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_text_primary

            # Secondary button text color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_text_secondary

            # Input focus border color
            sig { returns(T.nilable(String)) }
            attr_accessor :input_focus_border

            # Text error color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_error

            # Text placeholder color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_placeholder

            # Text primary color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_primary

            # Text secondary color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_secondary

            # Text success color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_success

            # Dark mode color configuration
            sig do
              params(
                bg_primary: T.nilable(String),
                bg_secondary: T.nilable(String),
                border_primary: T.nilable(String),
                border_secondary: T.nilable(String),
                button_primary: T.nilable(String),
                button_primary_hover: T.nilable(String),
                button_secondary: T.nilable(String),
                button_secondary_hover: T.nilable(String),
                button_text_primary: T.nilable(String),
                button_text_secondary: T.nilable(String),
                input_focus_border: T.nilable(String),
                text_error: T.nilable(String),
                text_placeholder: T.nilable(String),
                text_primary: T.nilable(String),
                text_secondary: T.nilable(String),
                text_success: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Background primary color
              #
              # Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
              bg_primary: nil,
              # Background secondary color
              bg_secondary: nil,
              # Border primary color
              border_primary: nil,
              # Border secondary color
              border_secondary: nil,
              # Primary button background color
              button_primary: nil,
              # Primary button hover color
              button_primary_hover: nil,
              # Secondary button background color
              button_secondary: nil,
              # Secondary button hover color
              button_secondary_hover: nil,
              # Primary button text color
              button_text_primary: nil,
              # Secondary button text color
              button_text_secondary: nil,
              # Input focus border color
              input_focus_border: nil,
              # Text error color
              text_error: nil,
              # Text placeholder color
              text_placeholder: nil,
              # Text primary color
              text_primary: nil,
              # Text secondary color
              text_secondary: nil,
              # Text success color
              text_success: nil
            )
            end

            sig do
              override.returns(
                {
                  bg_primary: T.nilable(String),
                  bg_secondary: T.nilable(String),
                  border_primary: T.nilable(String),
                  border_secondary: T.nilable(String),
                  button_primary: T.nilable(String),
                  button_primary_hover: T.nilable(String),
                  button_secondary: T.nilable(String),
                  button_secondary_hover: T.nilable(String),
                  button_text_primary: T.nilable(String),
                  button_text_secondary: T.nilable(String),
                  input_focus_border: T.nilable(String),
                  text_error: T.nilable(String),
                  text_placeholder: T.nilable(String),
                  text_primary: T.nilable(String),
                  text_secondary: T.nilable(String),
                  text_success: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          # Font size for the checkout UI
          module FontSize
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            XS =
              T.let(
                :xs,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::TaggedSymbol
              )
            SM =
              T.let(
                :sm,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::TaggedSymbol
              )
            MD =
              T.let(
                :md,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::TaggedSymbol
              )
            LG =
              T.let(
                :lg,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::TaggedSymbol
              )
            XL =
              T.let(
                :xl,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::TaggedSymbol
              )
            FONT_SIZE_2XL =
              T.let(
                :"2xl",
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontSize::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Font weight for the checkout UI
          module FontWeight
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NORMAL =
              T.let(
                :normal,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::TaggedSymbol
              )
            MEDIUM =
              T.let(
                :medium,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::TaggedSymbol
              )
            BOLD =
              T.let(
                :bold,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::TaggedSymbol
              )
            EXTRA_BOLD =
              T.let(
                :extraBold,
                Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::FontWeight::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Light < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::CheckoutSessionRequest::Customization::ThemeConfig::Light,
                  Dodopayments::Internal::AnyHash
                )
              end

            # Background primary color
            #
            # Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
            sig { returns(T.nilable(String)) }
            attr_accessor :bg_primary

            # Background secondary color
            sig { returns(T.nilable(String)) }
            attr_accessor :bg_secondary

            # Border primary color
            sig { returns(T.nilable(String)) }
            attr_accessor :border_primary

            # Border secondary color
            sig { returns(T.nilable(String)) }
            attr_accessor :border_secondary

            # Primary button background color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_primary

            # Primary button hover color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_primary_hover

            # Secondary button background color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_secondary

            # Secondary button hover color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_secondary_hover

            # Primary button text color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_text_primary

            # Secondary button text color
            sig { returns(T.nilable(String)) }
            attr_accessor :button_text_secondary

            # Input focus border color
            sig { returns(T.nilable(String)) }
            attr_accessor :input_focus_border

            # Text error color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_error

            # Text placeholder color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_placeholder

            # Text primary color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_primary

            # Text secondary color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_secondary

            # Text success color
            sig { returns(T.nilable(String)) }
            attr_accessor :text_success

            # Light mode color configuration
            sig do
              params(
                bg_primary: T.nilable(String),
                bg_secondary: T.nilable(String),
                border_primary: T.nilable(String),
                border_secondary: T.nilable(String),
                button_primary: T.nilable(String),
                button_primary_hover: T.nilable(String),
                button_secondary: T.nilable(String),
                button_secondary_hover: T.nilable(String),
                button_text_primary: T.nilable(String),
                button_text_secondary: T.nilable(String),
                input_focus_border: T.nilable(String),
                text_error: T.nilable(String),
                text_placeholder: T.nilable(String),
                text_primary: T.nilable(String),
                text_secondary: T.nilable(String),
                text_success: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Background primary color
              #
              # Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
              bg_primary: nil,
              # Background secondary color
              bg_secondary: nil,
              # Border primary color
              border_primary: nil,
              # Border secondary color
              border_secondary: nil,
              # Primary button background color
              button_primary: nil,
              # Primary button hover color
              button_primary_hover: nil,
              # Secondary button background color
              button_secondary: nil,
              # Secondary button hover color
              button_secondary_hover: nil,
              # Primary button text color
              button_text_primary: nil,
              # Secondary button text color
              button_text_secondary: nil,
              # Input focus border color
              input_focus_border: nil,
              # Text error color
              text_error: nil,
              # Text placeholder color
              text_placeholder: nil,
              # Text primary color
              text_primary: nil,
              # Text secondary color
              text_secondary: nil,
              # Text success color
              text_success: nil
            )
            end

            sig do
              override.returns(
                {
                  bg_primary: T.nilable(String),
                  bg_secondary: T.nilable(String),
                  border_primary: T.nilable(String),
                  border_secondary: T.nilable(String),
                  button_primary: T.nilable(String),
                  button_primary_hover: T.nilable(String),
                  button_secondary: T.nilable(String),
                  button_secondary_hover: T.nilable(String),
                  button_text_primary: T.nilable(String),
                  button_text_secondary: T.nilable(String),
                  input_focus_border: T.nilable(String),
                  text_error: T.nilable(String),
                  text_placeholder: T.nilable(String),
                  text_primary: T.nilable(String),
                  text_secondary: T.nilable(String),
                  text_success: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end
      end

      class FeatureFlags < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CheckoutSessionRequest::FeatureFlags,
              Dodopayments::Internal::AnyHash
            )
          end

        # if customer is allowed to change currency, set it to true
        #
        # Default is true
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_currency_selection

        sig { params(allow_currency_selection: T::Boolean).void }
        attr_writer :allow_currency_selection

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_customer_editing_city

        sig { params(allow_customer_editing_city: T::Boolean).void }
        attr_writer :allow_customer_editing_city

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_customer_editing_country

        sig { params(allow_customer_editing_country: T::Boolean).void }
        attr_writer :allow_customer_editing_country

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_customer_editing_email

        sig { params(allow_customer_editing_email: T::Boolean).void }
        attr_writer :allow_customer_editing_email

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_customer_editing_name

        sig { params(allow_customer_editing_name: T::Boolean).void }
        attr_writer :allow_customer_editing_name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_customer_editing_state

        sig { params(allow_customer_editing_state: T::Boolean).void }
        attr_writer :allow_customer_editing_state

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_customer_editing_street

        sig { params(allow_customer_editing_street: T::Boolean).void }
        attr_writer :allow_customer_editing_street

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_customer_editing_zipcode

        sig { params(allow_customer_editing_zipcode: T::Boolean).void }
        attr_writer :allow_customer_editing_zipcode

        # If the customer is allowed to apply discount code, set it to true.
        #
        # Default is true
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_discount_code

        sig { params(allow_discount_code: T::Boolean).void }
        attr_writer :allow_discount_code

        # If phone number is collected from customer, set it to rue
        #
        # Default is true
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_phone_number_collection

        sig { params(allow_phone_number_collection: T::Boolean).void }
        attr_writer :allow_phone_number_collection

        # If the customer is allowed to add tax id, set it to true
        #
        # Default is true
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_tax_id

        sig { params(allow_tax_id: T::Boolean).void }
        attr_writer :allow_tax_id

        # Set to true if a new customer object should be created. By default email is used
        # to find an existing customer to attach the session to
        #
        # Default is false
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :always_create_new_customer

        sig { params(always_create_new_customer: T::Boolean).void }
        attr_writer :always_create_new_customer

        # If true, redirects the customer immediately after payment completion
        #
        # Default is false
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :redirect_immediately

        sig { params(redirect_immediately: T::Boolean).void }
        attr_writer :redirect_immediately

        sig do
          params(
            allow_currency_selection: T::Boolean,
            allow_customer_editing_city: T::Boolean,
            allow_customer_editing_country: T::Boolean,
            allow_customer_editing_email: T::Boolean,
            allow_customer_editing_name: T::Boolean,
            allow_customer_editing_state: T::Boolean,
            allow_customer_editing_street: T::Boolean,
            allow_customer_editing_zipcode: T::Boolean,
            allow_discount_code: T::Boolean,
            allow_phone_number_collection: T::Boolean,
            allow_tax_id: T::Boolean,
            always_create_new_customer: T::Boolean,
            redirect_immediately: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # if customer is allowed to change currency, set it to true
          #
          # Default is true
          allow_currency_selection: nil,
          allow_customer_editing_city: nil,
          allow_customer_editing_country: nil,
          allow_customer_editing_email: nil,
          allow_customer_editing_name: nil,
          allow_customer_editing_state: nil,
          allow_customer_editing_street: nil,
          allow_customer_editing_zipcode: nil,
          # If the customer is allowed to apply discount code, set it to true.
          #
          # Default is true
          allow_discount_code: nil,
          # If phone number is collected from customer, set it to rue
          #
          # Default is true
          allow_phone_number_collection: nil,
          # If the customer is allowed to add tax id, set it to true
          #
          # Default is true
          allow_tax_id: nil,
          # Set to true if a new customer object should be created. By default email is used
          # to find an existing customer to attach the session to
          #
          # Default is false
          always_create_new_customer: nil,
          # If true, redirects the customer immediately after payment completion
          #
          # Default is false
          redirect_immediately: nil
        )
        end

        sig do
          override.returns(
            {
              allow_currency_selection: T::Boolean,
              allow_customer_editing_city: T::Boolean,
              allow_customer_editing_country: T::Boolean,
              allow_customer_editing_email: T::Boolean,
              allow_customer_editing_name: T::Boolean,
              allow_customer_editing_state: T::Boolean,
              allow_customer_editing_street: T::Boolean,
              allow_customer_editing_zipcode: T::Boolean,
              allow_discount_code: T::Boolean,
              allow_phone_number_collection: T::Boolean,
              allow_tax_id: T::Boolean,
              always_create_new_customer: T::Boolean,
              redirect_immediately: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class SubscriptionData < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CheckoutSessionRequest::SubscriptionData,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Dodopayments::OnDemandSubscription)) }
        attr_reader :on_demand

        sig do
          params(
            on_demand: T.nilable(Dodopayments::OnDemandSubscription::OrHash)
          ).void
        end
        attr_writer :on_demand

        # Optional trial period in days If specified, this value overrides the trial
        # period set in the product's price Must be between 0 and 10000 days
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        sig do
          params(
            on_demand: T.nilable(Dodopayments::OnDemandSubscription::OrHash),
            trial_period_days: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          on_demand: nil,
          # Optional trial period in days If specified, this value overrides the trial
          # period set in the product's price Must be between 0 and 10000 days
          trial_period_days: nil
        )
        end

        sig do
          override.returns(
            {
              on_demand: T.nilable(Dodopayments::OnDemandSubscription),
              trial_period_days: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

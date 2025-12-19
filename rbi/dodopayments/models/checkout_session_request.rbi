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

        # Theme of the page
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

        # Customization for the checkout session page
        sig do
          params(
            force_language: T.nilable(String),
            show_on_demand_tag: T::Boolean,
            show_order_details: T::Boolean,
            theme:
              Dodopayments::CheckoutSessionRequest::Customization::Theme::OrSymbol
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
          # Theme of the page
          #
          # Default is `System`.
          theme: nil
        )
        end

        sig do
          override.returns(
            {
              force_language: T.nilable(String),
              show_on_demand_tag: T::Boolean,
              show_order_details: T::Boolean,
              theme:
                Dodopayments::CheckoutSessionRequest::Customization::Theme::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Theme of the page
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

# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::CheckoutSessions#preview
    class CheckoutSessionPreviewResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute billing_country
      #   Billing country
      #
      #   @return [Symbol, Dodopayments::Models::CountryCode]
      required :billing_country, enum: -> { Dodopayments::CountryCode }

      # @!attribute currency
      #   Currency in which the calculations were made
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute current_breakup
      #   Breakup of the current payment
      #
      #   @return [Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup]
      required :current_breakup, -> { Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup }

      # @!attribute product_cart
      #   The total product cart
      #
      #   @return [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart>]
      required :product_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart] }

      # @!attribute total_price
      #   Total calculate price of the product cart
      #
      #   @return [Integer]
      required :total_price, Integer

      # @!attribute recurring_breakup
      #   Breakup of recurring payments (None for one-time only)
      #
      #   @return [Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup, nil]
      optional :recurring_breakup,
               -> { Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup },
               nil?: true

      # @!attribute tax_id_err_msg
      #   Error message if tax ID validation failed
      #
      #   @return [String, nil]
      optional :tax_id_err_msg, String, nil?: true

      # @!attribute total_tax
      #   Total tax
      #
      #   @return [Integer, nil]
      optional :total_tax, Integer, nil?: true

      # @!method initialize(billing_country:, currency:, current_breakup:, product_cart:, total_price:, recurring_breakup: nil, tax_id_err_msg: nil, total_tax: nil)
      #   Data returned by the calculate checkout session API
      #
      #   @param billing_country [Symbol, Dodopayments::Models::CountryCode] Billing country
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency] Currency in which the calculations were made
      #
      #   @param current_breakup [Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup] Breakup of the current payment
      #
      #   @param product_cart [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart>] The total product cart
      #
      #   @param total_price [Integer] Total calculate price of the product cart
      #
      #   @param recurring_breakup [Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup, nil] Breakup of recurring payments (None for one-time only)
      #
      #   @param tax_id_err_msg [String, nil] Error message if tax ID validation failed
      #
      #   @param total_tax [Integer, nil] Total tax

      # @see Dodopayments::Models::CheckoutSessionPreviewResponse#current_breakup
      class CurrentBreakup < Dodopayments::Internal::Type::BaseModel
        # @!attribute discount
        #   Total discount amount
        #
        #   @return [Integer]
        required :discount, Integer

        # @!attribute subtotal
        #   Subtotal before discount (pre-tax original prices)
        #
        #   @return [Integer]
        required :subtotal, Integer

        # @!attribute total_amount
        #   Total amount to be charged (final amount after all calculations)
        #
        #   @return [Integer]
        required :total_amount, Integer

        # @!attribute tax
        #   Total tax amount
        #
        #   @return [Integer, nil]
        optional :tax, Integer, nil?: true

        # @!method initialize(discount:, subtotal:, total_amount:, tax: nil)
        #   Breakup of the current payment
        #
        #   @param discount [Integer] Total discount amount
        #
        #   @param subtotal [Integer] Subtotal before discount (pre-tax original prices)
        #
        #   @param total_amount [Integer] Total amount to be charged (final amount after all calculations)
        #
        #   @param tax [Integer, nil] Total tax amount
      end

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        # @!attribute credit_entitlements
        #   Credit entitlements that will be granted upon purchase
        #
        #   @return [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::CreditEntitlement>]
        required :credit_entitlements,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::CreditEntitlement] }

        # @!attribute currency
        #   the currency in which the calculatiosn were made
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute discounted_price
        #   discounted price
        #
        #   @return [Integer]
        required :discounted_price, Integer

        # @!attribute is_subscription
        #   Whether this is a subscription product (affects tax calculation in breakup)
        #
        #   @return [Boolean]
        required :is_subscription, Dodopayments::Internal::Type::Boolean

        # @!attribute is_usage_based
        #
        #   @return [Boolean]
        required :is_usage_based, Dodopayments::Internal::Type::Boolean

        # @!attribute meters
        #
        #   @return [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Meter>]
        required :meters,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Meter] }

        # @!attribute og_currency
        #   the product currency
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :og_currency, enum: -> { Dodopayments::Currency }

        # @!attribute og_price
        #   original price of the product
        #
        #   @return [Integer]
        required :og_price, Integer

        # @!attribute product_id
        #   unique id of the product
        #
        #   @return [String]
        required :product_id, String

        # @!attribute quantity
        #   Quanitity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute tax_category
        #   tax category
        #
        #   @return [Symbol, Dodopayments::Models::TaxCategory]
        required :tax_category, enum: -> { Dodopayments::TaxCategory }

        # @!attribute tax_inclusive
        #   Whether tax is included in the price
        #
        #   @return [Boolean]
        required :tax_inclusive, Dodopayments::Internal::Type::Boolean

        # @!attribute tax_rate
        #   tax rate
        #
        #   @return [Integer]
        required :tax_rate, Integer

        # @!attribute addons
        #
        #   @return [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon>, nil]
        optional :addons,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon] },
                 nil?: true

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute discount_amount
        #   discount percentage
        #
        #   @return [Integer, nil]
        optional :discount_amount, Integer, nil?: true

        # @!attribute discount_cycle
        #   number of cycles the discount will apply
        #
        #   @return [Integer, nil]
        optional :discount_cycle, Integer, nil?: true

        # @!attribute name
        #   name of the product
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute tax
        #   total tax
        #
        #   @return [Integer, nil]
        optional :tax, Integer, nil?: true

        # @!method initialize(credit_entitlements:, currency:, discounted_price:, is_subscription:, is_usage_based:, meters:, og_currency:, og_price:, product_id:, quantity:, tax_category:, tax_inclusive:, tax_rate:, addons: nil, description: nil, discount_amount: nil, discount_cycle: nil, name: nil, tax: nil)
        #   @param credit_entitlements [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::CreditEntitlement>] Credit entitlements that will be granted upon purchase
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] the currency in which the calculatiosn were made
        #
        #   @param discounted_price [Integer] discounted price
        #
        #   @param is_subscription [Boolean] Whether this is a subscription product (affects tax calculation in breakup)
        #
        #   @param is_usage_based [Boolean]
        #
        #   @param meters [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Meter>]
        #
        #   @param og_currency [Symbol, Dodopayments::Models::Currency] the product currency
        #
        #   @param og_price [Integer] original price of the product
        #
        #   @param product_id [String] unique id of the product
        #
        #   @param quantity [Integer] Quanitity
        #
        #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] tax category
        #
        #   @param tax_inclusive [Boolean] Whether tax is included in the price
        #
        #   @param tax_rate [Integer] tax rate
        #
        #   @param addons [Array<Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon>, nil]
        #
        #   @param description [String, nil]
        #
        #   @param discount_amount [Integer, nil] discount percentage
        #
        #   @param discount_cycle [Integer, nil] number of cycles the discount will apply
        #
        #   @param name [String, nil] name of the product
        #
        #   @param tax [Integer, nil] total tax

        class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
          # @!attribute credit_entitlement_id
          #   ID of the credit entitlement
          #
          #   @return [String]
          required :credit_entitlement_id, String

          # @!attribute credit_entitlement_name
          #   Name of the credit entitlement
          #
          #   @return [String]
          required :credit_entitlement_name, String

          # @!attribute credit_entitlement_unit
          #   Unit label (e.g. "API Calls", "Tokens")
          #
          #   @return [String]
          required :credit_entitlement_unit, String

          # @!attribute credits_amount
          #   Number of credits granted
          #
          #   @return [String]
          required :credits_amount, String

          # @!method initialize(credit_entitlement_id:, credit_entitlement_name:, credit_entitlement_unit:, credits_amount:)
          #   Minimal credit entitlement info shown at checkout — what credits the customer
          #   will receive
          #
          #   @param credit_entitlement_id [String] ID of the credit entitlement
          #
          #   @param credit_entitlement_name [String] Name of the credit entitlement
          #
          #   @param credit_entitlement_unit [String] Unit label (e.g. "API Calls", "Tokens")
          #
          #   @param credits_amount [String] Number of credits granted
        end

        class Meter < Dodopayments::Internal::Type::BaseModel
          # @!attribute measurement_unit
          #
          #   @return [String]
          required :measurement_unit, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute price_per_unit
          #
          #   @return [String]
          required :price_per_unit, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute free_threshold
          #
          #   @return [Integer, nil]
          optional :free_threshold, Integer, nil?: true

          # @!method initialize(measurement_unit:, name:, price_per_unit:, description: nil, free_threshold: nil)
          #   @param measurement_unit [String]
          #   @param name [String]
          #   @param price_per_unit [String]
          #   @param description [String, nil]
          #   @param free_threshold [Integer, nil]
        end

        class Addon < Dodopayments::Internal::Type::BaseModel
          # @!attribute addon_id
          #
          #   @return [String]
          required :addon_id, String

          # @!attribute currency
          #
          #   @return [Symbol, Dodopayments::Models::Currency]
          required :currency, enum: -> { Dodopayments::Currency }

          # @!attribute discounted_price
          #
          #   @return [Integer]
          required :discounted_price, Integer

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute og_currency
          #
          #   @return [Symbol, Dodopayments::Models::Currency]
          required :og_currency, enum: -> { Dodopayments::Currency }

          # @!attribute og_price
          #
          #   @return [Integer]
          required :og_price, Integer

          # @!attribute quantity
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!attribute tax_category
          #   Represents the different categories of taxation applicable to various products
          #   and services.
          #
          #   @return [Symbol, Dodopayments::Models::TaxCategory]
          required :tax_category, enum: -> { Dodopayments::TaxCategory }

          # @!attribute tax_inclusive
          #
          #   @return [Boolean]
          required :tax_inclusive, Dodopayments::Internal::Type::Boolean

          # @!attribute tax_rate
          #
          #   @return [Integer]
          required :tax_rate, Integer

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute discount_amount
          #
          #   @return [Integer, nil]
          optional :discount_amount, Integer, nil?: true

          # @!attribute tax
          #
          #   @return [Integer, nil]
          optional :tax, Integer, nil?: true

          # @!method initialize(addon_id:, currency:, discounted_price:, name:, og_currency:, og_price:, quantity:, tax_category:, tax_inclusive:, tax_rate:, description: nil, discount_amount: nil, tax: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon} for
          #   more details.
          #
          #   @param addon_id [String]
          #
          #   @param currency [Symbol, Dodopayments::Models::Currency]
          #
          #   @param discounted_price [Integer]
          #
          #   @param name [String]
          #
          #   @param og_currency [Symbol, Dodopayments::Models::Currency]
          #
          #   @param og_price [Integer]
          #
          #   @param quantity [Integer]
          #
          #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
          #
          #   @param tax_inclusive [Boolean]
          #
          #   @param tax_rate [Integer]
          #
          #   @param description [String, nil]
          #
          #   @param discount_amount [Integer, nil]
          #
          #   @param tax [Integer, nil]
        end
      end

      # @see Dodopayments::Models::CheckoutSessionPreviewResponse#recurring_breakup
      class RecurringBreakup < Dodopayments::Internal::Type::BaseModel
        # @!attribute discount
        #   Total discount amount
        #
        #   @return [Integer]
        required :discount, Integer

        # @!attribute subtotal
        #   Subtotal before discount (pre-tax original prices)
        #
        #   @return [Integer]
        required :subtotal, Integer

        # @!attribute total_amount
        #   Total recurring amount including tax
        #
        #   @return [Integer]
        required :total_amount, Integer

        # @!attribute tax
        #   Total tax on recurring payments
        #
        #   @return [Integer, nil]
        optional :tax, Integer, nil?: true

        # @!method initialize(discount:, subtotal:, total_amount:, tax: nil)
        #   Breakup of recurring payments (None for one-time only)
        #
        #   @param discount [Integer] Total discount amount
        #
        #   @param subtotal [Integer] Subtotal before discount (pre-tax original prices)
        #
        #   @param total_amount [Integer] Total recurring amount including tax
        #
        #   @param tax [Integer, nil] Total tax on recurring payments
      end
    end
  end
end

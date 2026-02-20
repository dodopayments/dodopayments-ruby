# typed: strong

module Dodopayments
  module Models
    class CheckoutSessionPreviewResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::CheckoutSessionPreviewResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Billing country
      sig { returns(Dodopayments::CountryCode::TaggedSymbol) }
      attr_accessor :billing_country

      # Currency in which the calculations were made
      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Breakup of the current payment
      sig do
        returns(
          Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup
        )
      end
      attr_reader :current_breakup

      sig do
        params(
          current_breakup:
            Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup::OrHash
        ).void
      end
      attr_writer :current_breakup

      # The total product cart
      sig do
        returns(
          T::Array[
            Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart
          ]
        )
      end
      attr_accessor :product_cart

      # Total calculate price of the product cart
      sig { returns(Integer) }
      attr_accessor :total_price

      # Breakup of recurring payments (None for one-time only)
      sig do
        returns(
          T.nilable(
            Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup
          )
        )
      end
      attr_reader :recurring_breakup

      sig do
        params(
          recurring_breakup:
            T.nilable(
              Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup::OrHash
            )
        ).void
      end
      attr_writer :recurring_breakup

      # Error message if tax ID validation failed
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id_err_msg

      # Total tax
      sig { returns(T.nilable(Integer)) }
      attr_accessor :total_tax

      # Data returned by the calculate checkout session API
      sig do
        params(
          billing_country: Dodopayments::CountryCode::OrSymbol,
          currency: Dodopayments::Currency::OrSymbol,
          current_breakup:
            Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup::OrHash,
          product_cart:
            T::Array[
              Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::OrHash
            ],
          total_price: Integer,
          recurring_breakup:
            T.nilable(
              Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup::OrHash
            ),
          tax_id_err_msg: T.nilable(String),
          total_tax: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Billing country
        billing_country:,
        # Currency in which the calculations were made
        currency:,
        # Breakup of the current payment
        current_breakup:,
        # The total product cart
        product_cart:,
        # Total calculate price of the product cart
        total_price:,
        # Breakup of recurring payments (None for one-time only)
        recurring_breakup: nil,
        # Error message if tax ID validation failed
        tax_id_err_msg: nil,
        # Total tax
        total_tax: nil
      )
      end

      sig do
        override.returns(
          {
            billing_country: Dodopayments::CountryCode::TaggedSymbol,
            currency: Dodopayments::Currency::TaggedSymbol,
            current_breakup:
              Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup,
            product_cart:
              T::Array[
                Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart
              ],
            total_price: Integer,
            recurring_breakup:
              T.nilable(
                Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup
              ),
            tax_id_err_msg: T.nilable(String),
            total_tax: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class CurrentBreakup < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CheckoutSessionPreviewResponse::CurrentBreakup,
              Dodopayments::Internal::AnyHash
            )
          end

        # Total discount amount
        sig { returns(Integer) }
        attr_accessor :discount

        # Subtotal before discount (pre-tax original prices)
        sig { returns(Integer) }
        attr_accessor :subtotal

        # Total amount to be charged (final amount after all calculations)
        sig { returns(Integer) }
        attr_accessor :total_amount

        # Total tax amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tax

        # Breakup of the current payment
        sig do
          params(
            discount: Integer,
            subtotal: Integer,
            total_amount: Integer,
            tax: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Total discount amount
          discount:,
          # Subtotal before discount (pre-tax original prices)
          subtotal:,
          # Total amount to be charged (final amount after all calculations)
          total_amount:,
          # Total tax amount
          tax: nil
        )
        end

        sig do
          override.returns(
            {
              discount: Integer,
              subtotal: Integer,
              total_amount: Integer,
              tax: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart,
              Dodopayments::Internal::AnyHash
            )
          end

        # Credit entitlements that will be granted upon purchase
        sig do
          returns(
            T::Array[
              Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::CreditEntitlement
            ]
          )
        end
        attr_accessor :credit_entitlements

        # the currency in which the calculatiosn were made
        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :currency

        # discounted price
        sig { returns(Integer) }
        attr_accessor :discounted_price

        # Whether this is a subscription product (affects tax calculation in breakup)
        sig { returns(T::Boolean) }
        attr_accessor :is_subscription

        sig { returns(T::Boolean) }
        attr_accessor :is_usage_based

        sig do
          returns(
            T::Array[
              Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Meter
            ]
          )
        end
        attr_accessor :meters

        # the product currency
        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :og_currency

        # original price of the product
        sig { returns(Integer) }
        attr_accessor :og_price

        # unique id of the product
        sig { returns(String) }
        attr_accessor :product_id

        # Quanitity
        sig { returns(Integer) }
        attr_accessor :quantity

        # tax category
        sig { returns(Dodopayments::TaxCategory::TaggedSymbol) }
        attr_accessor :tax_category

        # Whether tax is included in the price
        sig { returns(T::Boolean) }
        attr_accessor :tax_inclusive

        # tax rate
        sig { returns(Integer) }
        attr_accessor :tax_rate

        sig do
          returns(
            T.nilable(
              T::Array[
                Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon
              ]
            )
          )
        end
        attr_accessor :addons

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # discount percentage
        sig { returns(T.nilable(Integer)) }
        attr_accessor :discount_amount

        # number of cycles the discount will apply
        sig { returns(T.nilable(Integer)) }
        attr_accessor :discount_cycle

        # name of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # total tax
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tax

        sig do
          params(
            credit_entitlements:
              T::Array[
                Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::CreditEntitlement::OrHash
              ],
            currency: Dodopayments::Currency::OrSymbol,
            discounted_price: Integer,
            is_subscription: T::Boolean,
            is_usage_based: T::Boolean,
            meters:
              T::Array[
                Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Meter::OrHash
              ],
            og_currency: Dodopayments::Currency::OrSymbol,
            og_price: Integer,
            product_id: String,
            quantity: Integer,
            tax_category: Dodopayments::TaxCategory::OrSymbol,
            tax_inclusive: T::Boolean,
            tax_rate: Integer,
            addons:
              T.nilable(
                T::Array[
                  Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon::OrHash
                ]
              ),
            description: T.nilable(String),
            discount_amount: T.nilable(Integer),
            discount_cycle: T.nilable(Integer),
            name: T.nilable(String),
            tax: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Credit entitlements that will be granted upon purchase
          credit_entitlements:,
          # the currency in which the calculatiosn were made
          currency:,
          # discounted price
          discounted_price:,
          # Whether this is a subscription product (affects tax calculation in breakup)
          is_subscription:,
          is_usage_based:,
          meters:,
          # the product currency
          og_currency:,
          # original price of the product
          og_price:,
          # unique id of the product
          product_id:,
          # Quanitity
          quantity:,
          # tax category
          tax_category:,
          # Whether tax is included in the price
          tax_inclusive:,
          # tax rate
          tax_rate:,
          addons: nil,
          description: nil,
          # discount percentage
          discount_amount: nil,
          # number of cycles the discount will apply
          discount_cycle: nil,
          # name of the product
          name: nil,
          # total tax
          tax: nil
        )
        end

        sig do
          override.returns(
            {
              credit_entitlements:
                T::Array[
                  Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::CreditEntitlement
                ],
              currency: Dodopayments::Currency::TaggedSymbol,
              discounted_price: Integer,
              is_subscription: T::Boolean,
              is_usage_based: T::Boolean,
              meters:
                T::Array[
                  Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Meter
                ],
              og_currency: Dodopayments::Currency::TaggedSymbol,
              og_price: Integer,
              product_id: String,
              quantity: Integer,
              tax_category: Dodopayments::TaxCategory::TaggedSymbol,
              tax_inclusive: T::Boolean,
              tax_rate: Integer,
              addons:
                T.nilable(
                  T::Array[
                    Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon
                  ]
                ),
              description: T.nilable(String),
              discount_amount: T.nilable(Integer),
              discount_cycle: T.nilable(Integer),
              name: T.nilable(String),
              tax: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::CreditEntitlement,
                Dodopayments::Internal::AnyHash
              )
            end

          # ID of the credit entitlement
          sig { returns(String) }
          attr_accessor :credit_entitlement_id

          # Name of the credit entitlement
          sig { returns(String) }
          attr_accessor :credit_entitlement_name

          # Unit label (e.g. "API Calls", "Tokens")
          sig { returns(String) }
          attr_accessor :credit_entitlement_unit

          # Number of credits granted
          sig { returns(String) }
          attr_accessor :credits_amount

          # Minimal credit entitlement info shown at checkout — what credits the customer
          # will receive
          sig do
            params(
              credit_entitlement_id: String,
              credit_entitlement_name: String,
              credit_entitlement_unit: String,
              credits_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the credit entitlement
            credit_entitlement_id:,
            # Name of the credit entitlement
            credit_entitlement_name:,
            # Unit label (e.g. "API Calls", "Tokens")
            credit_entitlement_unit:,
            # Number of credits granted
            credits_amount:
          )
          end

          sig do
            override.returns(
              {
                credit_entitlement_id: String,
                credit_entitlement_name: String,
                credit_entitlement_unit: String,
                credits_amount: String
              }
            )
          end
          def to_hash
          end
        end

        class Meter < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Meter,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :measurement_unit

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :price_per_unit

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Integer)) }
          attr_accessor :free_threshold

          sig do
            params(
              measurement_unit: String,
              name: String,
              price_per_unit: String,
              description: T.nilable(String),
              free_threshold: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            measurement_unit:,
            name:,
            price_per_unit:,
            description: nil,
            free_threshold: nil
          )
          end

          sig do
            override.returns(
              {
                measurement_unit: String,
                name: String,
                price_per_unit: String,
                description: T.nilable(String),
                free_threshold: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        class Addon < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::CheckoutSessionPreviewResponse::ProductCart::Addon,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :addon_id

          sig { returns(Dodopayments::Currency::TaggedSymbol) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :discounted_price

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Dodopayments::Currency::TaggedSymbol) }
          attr_accessor :og_currency

          sig { returns(Integer) }
          attr_accessor :og_price

          sig { returns(Integer) }
          attr_accessor :quantity

          # Represents the different categories of taxation applicable to various products
          # and services.
          sig { returns(Dodopayments::TaxCategory::TaggedSymbol) }
          attr_accessor :tax_category

          sig { returns(T::Boolean) }
          attr_accessor :tax_inclusive

          sig { returns(Integer) }
          attr_accessor :tax_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Integer)) }
          attr_accessor :discount_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :tax

          sig do
            params(
              addon_id: String,
              currency: Dodopayments::Currency::OrSymbol,
              discounted_price: Integer,
              name: String,
              og_currency: Dodopayments::Currency::OrSymbol,
              og_price: Integer,
              quantity: Integer,
              tax_category: Dodopayments::TaxCategory::OrSymbol,
              tax_inclusive: T::Boolean,
              tax_rate: Integer,
              description: T.nilable(String),
              discount_amount: T.nilable(Integer),
              tax: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            addon_id:,
            currency:,
            discounted_price:,
            name:,
            og_currency:,
            og_price:,
            quantity:,
            # Represents the different categories of taxation applicable to various products
            # and services.
            tax_category:,
            tax_inclusive:,
            tax_rate:,
            description: nil,
            discount_amount: nil,
            tax: nil
          )
          end

          sig do
            override.returns(
              {
                addon_id: String,
                currency: Dodopayments::Currency::TaggedSymbol,
                discounted_price: Integer,
                name: String,
                og_currency: Dodopayments::Currency::TaggedSymbol,
                og_price: Integer,
                quantity: Integer,
                tax_category: Dodopayments::TaxCategory::TaggedSymbol,
                tax_inclusive: T::Boolean,
                tax_rate: Integer,
                description: T.nilable(String),
                discount_amount: T.nilable(Integer),
                tax: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end
      end

      class RecurringBreakup < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CheckoutSessionPreviewResponse::RecurringBreakup,
              Dodopayments::Internal::AnyHash
            )
          end

        # Total discount amount
        sig { returns(Integer) }
        attr_accessor :discount

        # Subtotal before discount (pre-tax original prices)
        sig { returns(Integer) }
        attr_accessor :subtotal

        # Total recurring amount including tax
        sig { returns(Integer) }
        attr_accessor :total_amount

        # Total tax on recurring payments
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tax

        # Breakup of recurring payments (None for one-time only)
        sig do
          params(
            discount: Integer,
            subtotal: Integer,
            total_amount: Integer,
            tax: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Total discount amount
          discount:,
          # Subtotal before discount (pre-tax original prices)
          subtotal:,
          # Total recurring amount including tax
          total_amount:,
          # Total tax on recurring payments
          tax: nil
        )
        end

        sig do
          override.returns(
            {
              discount: Integer,
              subtotal: Integer,
              total_amount: Integer,
              tax: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

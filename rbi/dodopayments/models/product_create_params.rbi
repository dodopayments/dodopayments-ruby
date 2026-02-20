# typed: strong

module Dodopayments
  module Models
    class ProductCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Name of the product
      sig { returns(String) }
      attr_accessor :name

      # Price configuration for the product
      sig do
        returns(
          T.any(
            Dodopayments::Price::OneTimePrice,
            Dodopayments::Price::RecurringPrice,
            Dodopayments::Price::UsageBasedPrice
          )
        )
      end
      attr_accessor :price

      # Tax category applied to this product
      sig { returns(Dodopayments::TaxCategory::OrSymbol) }
      attr_accessor :tax_category

      # Addons available for subscription product
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :addons

      # Brand id for the product, if not provided will default to primary brand
      sig { returns(T.nilable(String)) }
      attr_accessor :brand_id

      # Optional credit entitlements to attach (max 3)
      sig do
        returns(
          T.nilable(
            T::Array[Dodopayments::ProductCreateParams::CreditEntitlement]
          )
        )
      end
      attr_accessor :credit_entitlements

      # Optional description of the product
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Choose how you would like you digital product delivered
      sig do
        returns(
          T.nilable(Dodopayments::ProductCreateParams::DigitalProductDelivery)
        )
      end
      attr_reader :digital_product_delivery

      sig do
        params(
          digital_product_delivery:
            T.nilable(
              Dodopayments::ProductCreateParams::DigitalProductDelivery::OrHash
            )
        ).void
      end
      attr_writer :digital_product_delivery

      # Optional message displayed during license key activation
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # The number of times the license key can be activated. Must be 0 or greater
      sig { returns(T.nilable(Integer)) }
      attr_accessor :license_key_activations_limit

      # Duration configuration for the license key. Set to null if you don't want the
      # license key to expire. For subscriptions, the lifetime of the license key is
      # tied to the subscription period
      sig { returns(T.nilable(Dodopayments::LicenseKeyDuration)) }
      attr_reader :license_key_duration

      sig do
        params(
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash)
        ).void
      end
      attr_writer :license_key_duration

      # When true, generates and sends a license key to your customer. Defaults to false
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :license_key_enabled

      # Additional metadata for the product
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          name: String,
          price:
            T.any(
              Dodopayments::Price::OneTimePrice::OrHash,
              Dodopayments::Price::RecurringPrice::OrHash,
              Dodopayments::Price::UsageBasedPrice::OrHash
            ),
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          addons: T.nilable(T::Array[String]),
          brand_id: T.nilable(String),
          credit_entitlements:
            T.nilable(
              T::Array[
                Dodopayments::ProductCreateParams::CreditEntitlement::OrHash
              ]
            ),
          description: T.nilable(String),
          digital_product_delivery:
            T.nilable(
              Dodopayments::ProductCreateParams::DigitalProductDelivery::OrHash
            ),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash),
          license_key_enabled: T.nilable(T::Boolean),
          metadata: T::Hash[Symbol, String],
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of the product
        name:,
        # Price configuration for the product
        price:,
        # Tax category applied to this product
        tax_category:,
        # Addons available for subscription product
        addons: nil,
        # Brand id for the product, if not provided will default to primary brand
        brand_id: nil,
        # Optional credit entitlements to attach (max 3)
        credit_entitlements: nil,
        # Optional description of the product
        description: nil,
        # Choose how you would like you digital product delivered
        digital_product_delivery: nil,
        # Optional message displayed during license key activation
        license_key_activation_message: nil,
        # The number of times the license key can be activated. Must be 0 or greater
        license_key_activations_limit: nil,
        # Duration configuration for the license key. Set to null if you don't want the
        # license key to expire. For subscriptions, the lifetime of the license key is
        # tied to the subscription period
        license_key_duration: nil,
        # When true, generates and sends a license key to your customer. Defaults to false
        license_key_enabled: nil,
        # Additional metadata for the product
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            price:
              T.any(
                Dodopayments::Price::OneTimePrice,
                Dodopayments::Price::RecurringPrice,
                Dodopayments::Price::UsageBasedPrice
              ),
            tax_category: Dodopayments::TaxCategory::OrSymbol,
            addons: T.nilable(T::Array[String]),
            brand_id: T.nilable(String),
            credit_entitlements:
              T.nilable(
                T::Array[Dodopayments::ProductCreateParams::CreditEntitlement]
              ),
            description: T.nilable(String),
            digital_product_delivery:
              T.nilable(
                Dodopayments::ProductCreateParams::DigitalProductDelivery
              ),
            license_key_activation_message: T.nilable(String),
            license_key_activations_limit: T.nilable(Integer),
            license_key_duration: T.nilable(Dodopayments::LicenseKeyDuration),
            license_key_enabled: T.nilable(T::Boolean),
            metadata: T::Hash[Symbol, String],
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCreateParams::CreditEntitlement,
              Dodopayments::Internal::AnyHash
            )
          end

        # ID of the credit entitlement to attach
        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        # Number of credits to grant when this product is purchased
        sig { returns(String) }
        attr_accessor :credits_amount

        # Whether new credit grants reduce existing overage
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :credits_reduce_overage

        # Currency for credit-related pricing
        sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
        attr_accessor :currency

        # Number of days after which credits expire
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_after_days

        # Balance threshold percentage for low balance notifications (0-100)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :low_balance_threshold_percent

        # Maximum number of rollover cycles allowed
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_rollover_count

        # Whether overage charges are applied at billing time
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :overage_charge_at_billing

        # Whether overage usage is allowed beyond credit balance
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :overage_enabled

        # Maximum amount of overage allowed
        sig { returns(T.nilable(String)) }
        attr_accessor :overage_limit

        # Whether to preserve overage balance when credits reset
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :preserve_overage_at_reset

        # Price per credit unit for purchasing additional credits
        sig { returns(T.nilable(String)) }
        attr_accessor :price_per_unit

        # Proration behavior for credit grants during plan changes
        sig do
          returns(
            T.nilable(
              Dodopayments::ProductCreateParams::CreditEntitlement::ProrationBehavior::OrSymbol
            )
          )
        end
        attr_accessor :proration_behavior

        # Whether unused credits can roll over to the next billing period
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :rollover_enabled

        # Percentage of unused credits that can roll over (0-100)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_percentage

        # Number of timeframe units for rollover window
        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_timeframe_count

        # Time interval for rollover window (day, week, month, year)
        sig { returns(T.nilable(Dodopayments::TimeInterval::OrSymbol)) }
        attr_accessor :rollover_timeframe_interval

        # Credits granted during trial period
        sig { returns(T.nilable(String)) }
        attr_accessor :trial_credits

        # Whether trial credits expire when trial ends
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :trial_credits_expire_after_trial

        # Request struct for attaching a credit entitlement to a product
        sig do
          params(
            credit_entitlement_id: String,
            credits_amount: String,
            credits_reduce_overage: T.nilable(T::Boolean),
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            expires_after_days: T.nilable(Integer),
            low_balance_threshold_percent: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_charge_at_billing: T.nilable(T::Boolean),
            overage_enabled: T.nilable(T::Boolean),
            overage_limit: T.nilable(String),
            preserve_overage_at_reset: T.nilable(T::Boolean),
            price_per_unit: T.nilable(String),
            proration_behavior:
              T.nilable(
                Dodopayments::ProductCreateParams::CreditEntitlement::ProrationBehavior::OrSymbol
              ),
            rollover_enabled: T.nilable(T::Boolean),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::OrSymbol),
            trial_credits: T.nilable(String),
            trial_credits_expire_after_trial: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the credit entitlement to attach
          credit_entitlement_id:,
          # Number of credits to grant when this product is purchased
          credits_amount:,
          # Whether new credit grants reduce existing overage
          credits_reduce_overage: nil,
          # Currency for credit-related pricing
          currency: nil,
          # Number of days after which credits expire
          expires_after_days: nil,
          # Balance threshold percentage for low balance notifications (0-100)
          low_balance_threshold_percent: nil,
          # Maximum number of rollover cycles allowed
          max_rollover_count: nil,
          # Whether overage charges are applied at billing time
          overage_charge_at_billing: nil,
          # Whether overage usage is allowed beyond credit balance
          overage_enabled: nil,
          # Maximum amount of overage allowed
          overage_limit: nil,
          # Whether to preserve overage balance when credits reset
          preserve_overage_at_reset: nil,
          # Price per credit unit for purchasing additional credits
          price_per_unit: nil,
          # Proration behavior for credit grants during plan changes
          proration_behavior: nil,
          # Whether unused credits can roll over to the next billing period
          rollover_enabled: nil,
          # Percentage of unused credits that can roll over (0-100)
          rollover_percentage: nil,
          # Number of timeframe units for rollover window
          rollover_timeframe_count: nil,
          # Time interval for rollover window (day, week, month, year)
          rollover_timeframe_interval: nil,
          # Credits granted during trial period
          trial_credits: nil,
          # Whether trial credits expire when trial ends
          trial_credits_expire_after_trial: nil
        )
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              credits_amount: String,
              credits_reduce_overage: T.nilable(T::Boolean),
              currency: T.nilable(Dodopayments::Currency::OrSymbol),
              expires_after_days: T.nilable(Integer),
              low_balance_threshold_percent: T.nilable(Integer),
              max_rollover_count: T.nilable(Integer),
              overage_charge_at_billing: T.nilable(T::Boolean),
              overage_enabled: T.nilable(T::Boolean),
              overage_limit: T.nilable(String),
              preserve_overage_at_reset: T.nilable(T::Boolean),
              price_per_unit: T.nilable(String),
              proration_behavior:
                T.nilable(
                  Dodopayments::ProductCreateParams::CreditEntitlement::ProrationBehavior::OrSymbol
                ),
              rollover_enabled: T.nilable(T::Boolean),
              rollover_percentage: T.nilable(Integer),
              rollover_timeframe_count: T.nilable(Integer),
              rollover_timeframe_interval:
                T.nilable(Dodopayments::TimeInterval::OrSymbol),
              trial_credits: T.nilable(String),
              trial_credits_expire_after_trial: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        # Proration behavior for credit grants during plan changes
        module ProrationBehavior
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::ProductCreateParams::CreditEntitlement::ProrationBehavior
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRORATE =
            T.let(
              :prorate,
              Dodopayments::ProductCreateParams::CreditEntitlement::ProrationBehavior::TaggedSymbol
            )
          NO_PRORATE =
            T.let(
              :no_prorate,
              Dodopayments::ProductCreateParams::CreditEntitlement::ProrationBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::ProductCreateParams::CreditEntitlement::ProrationBehavior::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCreateParams::DigitalProductDelivery,
              Dodopayments::Internal::AnyHash
            )
          end

        # External URL to digital product
        sig { returns(T.nilable(String)) }
        attr_accessor :external_url

        # Instructions to download and use the digital product
        sig { returns(T.nilable(String)) }
        attr_accessor :instructions

        # Choose how you would like you digital product delivered
        sig do
          params(
            external_url: T.nilable(String),
            instructions: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # External URL to digital product
          external_url: nil,
          # Instructions to download and use the digital product
          instructions: nil
        )
        end

        sig do
          override.returns(
            { external_url: T.nilable(String), instructions: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end

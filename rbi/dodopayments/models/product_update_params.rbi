# typed: strong

module Dodopayments
  module Models
    class ProductUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Available Addons for subscription products
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :addons

      sig { returns(T.nilable(String)) }
      attr_accessor :brand_id

      # Credit entitlements to update (replaces all existing when present) Send empty
      # array to remove all, omit field to leave unchanged
      sig do
        returns(
          T.nilable(
            T::Array[Dodopayments::ProductUpdateParams::CreditEntitlement]
          )
        )
      end
      attr_accessor :credit_entitlements

      # Description of the product, optional and must be at most 1000 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Choose how you would like you digital product delivered
      sig do
        returns(
          T.nilable(Dodopayments::ProductUpdateParams::DigitalProductDelivery)
        )
      end
      attr_reader :digital_product_delivery

      sig do
        params(
          digital_product_delivery:
            T.nilable(
              Dodopayments::ProductUpdateParams::DigitalProductDelivery::OrHash
            )
        ).void
      end
      attr_writer :digital_product_delivery

      # Product image id after its uploaded to S3
      sig { returns(T.nilable(String)) }
      attr_accessor :image_id

      # Message sent to the customer upon license key activation.
      #
      # Only applicable if `license_key_enabled` is `true`. This message contains
      # instructions for activating the license key.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # Limit for the number of activations for the license key.
      #
      # Only applicable if `license_key_enabled` is `true`. Represents the maximum
      # number of times the license key can be activated.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :license_key_activations_limit

      # Duration of the license key if enabled.
      #
      # Only applicable if `license_key_enabled` is `true`. Represents the duration in
      # days for which the license key is valid.
      sig { returns(T.nilable(Dodopayments::LicenseKeyDuration)) }
      attr_reader :license_key_duration

      sig do
        params(
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash)
        ).void
      end
      attr_writer :license_key_duration

      # Whether the product requires a license key.
      #
      # If `true`, additional fields related to license key (duration, activations
      # limit, activation message) become applicable.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :license_key_enabled

      # Additional metadata for the product
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Name of the product, optional and must be at most 100 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Price details of the product.
      sig do
        returns(
          T.nilable(
            T.any(
              Dodopayments::Price::OneTimePrice,
              Dodopayments::Price::RecurringPrice,
              Dodopayments::Price::UsageBasedPrice
            )
          )
        )
      end
      attr_accessor :price

      # Tax category of the product.
      sig { returns(T.nilable(Dodopayments::TaxCategory::OrSymbol)) }
      attr_accessor :tax_category

      sig do
        params(
          addons: T.nilable(T::Array[String]),
          brand_id: T.nilable(String),
          credit_entitlements:
            T.nilable(
              T::Array[
                Dodopayments::ProductUpdateParams::CreditEntitlement::OrHash
              ]
            ),
          description: T.nilable(String),
          digital_product_delivery:
            T.nilable(
              Dodopayments::ProductUpdateParams::DigitalProductDelivery::OrHash
            ),
          image_id: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash),
          license_key_enabled: T.nilable(T::Boolean),
          metadata: T.nilable(T::Hash[Symbol, String]),
          name: T.nilable(String),
          price:
            T.nilable(
              T.any(
                Dodopayments::Price::OneTimePrice::OrHash,
                Dodopayments::Price::RecurringPrice::OrHash,
                Dodopayments::Price::UsageBasedPrice::OrHash
              )
            ),
          tax_category: T.nilable(Dodopayments::TaxCategory::OrSymbol),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Available Addons for subscription products
        addons: nil,
        brand_id: nil,
        # Credit entitlements to update (replaces all existing when present) Send empty
        # array to remove all, omit field to leave unchanged
        credit_entitlements: nil,
        # Description of the product, optional and must be at most 1000 characters.
        description: nil,
        # Choose how you would like you digital product delivered
        digital_product_delivery: nil,
        # Product image id after its uploaded to S3
        image_id: nil,
        # Message sent to the customer upon license key activation.
        #
        # Only applicable if `license_key_enabled` is `true`. This message contains
        # instructions for activating the license key.
        license_key_activation_message: nil,
        # Limit for the number of activations for the license key.
        #
        # Only applicable if `license_key_enabled` is `true`. Represents the maximum
        # number of times the license key can be activated.
        license_key_activations_limit: nil,
        # Duration of the license key if enabled.
        #
        # Only applicable if `license_key_enabled` is `true`. Represents the duration in
        # days for which the license key is valid.
        license_key_duration: nil,
        # Whether the product requires a license key.
        #
        # If `true`, additional fields related to license key (duration, activations
        # limit, activation message) become applicable.
        license_key_enabled: nil,
        # Additional metadata for the product
        metadata: nil,
        # Name of the product, optional and must be at most 100 characters.
        name: nil,
        # Price details of the product.
        price: nil,
        # Tax category of the product.
        tax_category: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            addons: T.nilable(T::Array[String]),
            brand_id: T.nilable(String),
            credit_entitlements:
              T.nilable(
                T::Array[Dodopayments::ProductUpdateParams::CreditEntitlement]
              ),
            description: T.nilable(String),
            digital_product_delivery:
              T.nilable(
                Dodopayments::ProductUpdateParams::DigitalProductDelivery
              ),
            image_id: T.nilable(String),
            license_key_activation_message: T.nilable(String),
            license_key_activations_limit: T.nilable(Integer),
            license_key_duration: T.nilable(Dodopayments::LicenseKeyDuration),
            license_key_enabled: T.nilable(T::Boolean),
            metadata: T.nilable(T::Hash[Symbol, String]),
            name: T.nilable(String),
            price:
              T.nilable(
                T.any(
                  Dodopayments::Price::OneTimePrice,
                  Dodopayments::Price::RecurringPrice,
                  Dodopayments::Price::UsageBasedPrice
                )
              ),
            tax_category: T.nilable(Dodopayments::TaxCategory::OrSymbol),
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
              Dodopayments::ProductUpdateParams::CreditEntitlement,
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
              Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior::OrSymbol
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
                Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior::OrSymbol
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
                  Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior::OrSymbol
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
                Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRORATE =
            T.let(
              :prorate,
              Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior::TaggedSymbol
            )
          NO_PRORATE =
            T.let(
              :no_prorate,
              Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior::TaggedSymbol
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
              Dodopayments::ProductUpdateParams::DigitalProductDelivery,
              Dodopayments::Internal::AnyHash
            )
          end

        # External URL to digital product
        sig { returns(T.nilable(String)) }
        attr_accessor :external_url

        # Uploaded files ids of digital product
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :files

        # Instructions to download and use the digital product
        sig { returns(T.nilable(String)) }
        attr_accessor :instructions

        # Choose how you would like you digital product delivered
        sig do
          params(
            external_url: T.nilable(String),
            files: T.nilable(T::Array[String]),
            instructions: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # External URL to digital product
          external_url: nil,
          # Uploaded files ids of digital product
          files: nil,
          # Instructions to download and use the digital product
          instructions: nil
        )
        end

        sig do
          override.returns(
            {
              external_url: T.nilable(String),
              files: T.nilable(T::Array[String]),
              instructions: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

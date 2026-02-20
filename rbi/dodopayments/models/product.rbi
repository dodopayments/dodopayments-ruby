# typed: strong

module Dodopayments
  module Models
    class Product < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Product, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :brand_id

      # Unique identifier for the business to which the product belongs.
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Attached credit entitlements with settings
      sig { returns(T::Array[Dodopayments::Product::CreditEntitlement]) }
      attr_accessor :credit_entitlements

      # Indicates if the product is recurring (e.g., subscriptions).
      sig { returns(T::Boolean) }
      attr_accessor :is_recurring

      # Indicates whether the product requires a license key.
      sig { returns(T::Boolean) }
      attr_accessor :license_key_enabled

      # Additional custom data associated with the product
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Pricing information for the product.
      sig { returns(Dodopayments::Price::Variants) }
      attr_accessor :price

      # Unique identifier for the product.
      sig { returns(String) }
      attr_accessor :product_id

      # Tax category associated with the product.
      sig { returns(Dodopayments::TaxCategory::TaggedSymbol) }
      attr_accessor :tax_category

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Available Addons for subscription products
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :addons

      # Description of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Dodopayments::Product::DigitalProductDelivery)) }
      attr_reader :digital_product_delivery

      sig do
        params(
          digital_product_delivery:
            T.nilable(Dodopayments::Product::DigitalProductDelivery::OrHash)
        ).void
      end
      attr_writer :digital_product_delivery

      # URL of the product image, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      # Message sent upon license key activation, if applicable.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # Limit on the number of activations for the license key, if enabled.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :license_key_activations_limit

      # Duration of the license key validity, if enabled.
      sig { returns(T.nilable(Dodopayments::LicenseKeyDuration)) }
      attr_reader :license_key_duration

      sig do
        params(
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash)
        ).void
      end
      attr_writer :license_key_duration

      # Name of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The product collection ID this product belongs to, if any
      sig { returns(T.nilable(String)) }
      attr_accessor :product_collection_id

      sig do
        params(
          brand_id: String,
          business_id: String,
          created_at: Time,
          credit_entitlements:
            T::Array[Dodopayments::Product::CreditEntitlement::OrHash],
          is_recurring: T::Boolean,
          license_key_enabled: T::Boolean,
          metadata: T::Hash[Symbol, String],
          price:
            T.any(
              Dodopayments::Price::OneTimePrice::OrHash,
              Dodopayments::Price::RecurringPrice::OrHash,
              Dodopayments::Price::UsageBasedPrice::OrHash
            ),
          product_id: String,
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          updated_at: Time,
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          digital_product_delivery:
            T.nilable(Dodopayments::Product::DigitalProductDelivery::OrHash),
          image: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash),
          name: T.nilable(String),
          product_collection_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        brand_id:,
        # Unique identifier for the business to which the product belongs.
        business_id:,
        # Timestamp when the product was created.
        created_at:,
        # Attached credit entitlements with settings
        credit_entitlements:,
        # Indicates if the product is recurring (e.g., subscriptions).
        is_recurring:,
        # Indicates whether the product requires a license key.
        license_key_enabled:,
        # Additional custom data associated with the product
        metadata:,
        # Pricing information for the product.
        price:,
        # Unique identifier for the product.
        product_id:,
        # Tax category associated with the product.
        tax_category:,
        # Timestamp when the product was last updated.
        updated_at:,
        # Available Addons for subscription products
        addons: nil,
        # Description of the product, optional.
        description: nil,
        digital_product_delivery: nil,
        # URL of the product image, optional.
        image: nil,
        # Message sent upon license key activation, if applicable.
        license_key_activation_message: nil,
        # Limit on the number of activations for the license key, if enabled.
        license_key_activations_limit: nil,
        # Duration of the license key validity, if enabled.
        license_key_duration: nil,
        # Name of the product, optional.
        name: nil,
        # The product collection ID this product belongs to, if any
        product_collection_id: nil
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            business_id: String,
            created_at: Time,
            credit_entitlements:
              T::Array[Dodopayments::Product::CreditEntitlement],
            is_recurring: T::Boolean,
            license_key_enabled: T::Boolean,
            metadata: T::Hash[Symbol, String],
            price: Dodopayments::Price::Variants,
            product_id: String,
            tax_category: Dodopayments::TaxCategory::TaggedSymbol,
            updated_at: Time,
            addons: T.nilable(T::Array[String]),
            description: T.nilable(String),
            digital_product_delivery:
              T.nilable(Dodopayments::Product::DigitalProductDelivery),
            image: T.nilable(String),
            license_key_activation_message: T.nilable(String),
            license_key_activations_limit: T.nilable(Integer),
            license_key_duration: T.nilable(Dodopayments::LicenseKeyDuration),
            name: T.nilable(String),
            product_collection_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Product::CreditEntitlement,
              Dodopayments::Internal::AnyHash
            )
          end

        # Unique ID of this mapping
        sig { returns(String) }
        attr_accessor :id

        # ID of the credit entitlement
        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        # Name of the credit entitlement
        sig { returns(String) }
        attr_accessor :credit_entitlement_name

        # Unit label for the credit entitlement
        sig { returns(String) }
        attr_accessor :credit_entitlement_unit

        # Number of credits granted
        sig { returns(String) }
        attr_accessor :credits_amount

        # Whether new credit grants reduce existing overage
        sig { returns(T::Boolean) }
        attr_accessor :credits_reduce_overage

        # Whether overage is charged at billing
        sig { returns(T::Boolean) }
        attr_accessor :overage_charge_at_billing

        # Whether overage is enabled
        sig { returns(T::Boolean) }
        attr_accessor :overage_enabled

        # Whether to preserve overage balance when credits reset
        sig { returns(T::Boolean) }
        attr_accessor :preserve_overage_at_reset

        # Proration behavior for credit grants during plan changes
        sig do
          returns(
            Dodopayments::Product::CreditEntitlement::ProrationBehavior::TaggedSymbol
          )
        end
        attr_accessor :proration_behavior

        # Whether rollover is enabled
        sig { returns(T::Boolean) }
        attr_accessor :rollover_enabled

        # Whether trial credits expire after trial
        sig { returns(T::Boolean) }
        attr_accessor :trial_credits_expire_after_trial

        # Currency
        sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
        attr_accessor :currency

        # Days until credits expire
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_after_days

        # Low balance threshold percentage
        sig { returns(T.nilable(Integer)) }
        attr_accessor :low_balance_threshold_percent

        # Maximum rollover cycles
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_rollover_count

        # Overage limit
        sig { returns(T.nilable(String)) }
        attr_accessor :overage_limit

        # Price per unit
        sig { returns(T.nilable(String)) }
        attr_accessor :price_per_unit

        # Rollover percentage
        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_percentage

        # Rollover timeframe count
        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_timeframe_count

        # Rollover timeframe interval
        sig { returns(T.nilable(Dodopayments::TimeInterval::TaggedSymbol)) }
        attr_accessor :rollover_timeframe_interval

        # Trial credits
        sig { returns(T.nilable(String)) }
        attr_accessor :trial_credits

        # Response struct for credit entitlement mapping
        sig do
          params(
            id: String,
            credit_entitlement_id: String,
            credit_entitlement_name: String,
            credit_entitlement_unit: String,
            credits_amount: String,
            credits_reduce_overage: T::Boolean,
            overage_charge_at_billing: T::Boolean,
            overage_enabled: T::Boolean,
            preserve_overage_at_reset: T::Boolean,
            proration_behavior:
              Dodopayments::Product::CreditEntitlement::ProrationBehavior::OrSymbol,
            rollover_enabled: T::Boolean,
            trial_credits_expire_after_trial: T::Boolean,
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            expires_after_days: T.nilable(Integer),
            low_balance_threshold_percent: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_limit: T.nilable(String),
            price_per_unit: T.nilable(String),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::OrSymbol),
            trial_credits: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique ID of this mapping
          id:,
          # ID of the credit entitlement
          credit_entitlement_id:,
          # Name of the credit entitlement
          credit_entitlement_name:,
          # Unit label for the credit entitlement
          credit_entitlement_unit:,
          # Number of credits granted
          credits_amount:,
          # Whether new credit grants reduce existing overage
          credits_reduce_overage:,
          # Whether overage is charged at billing
          overage_charge_at_billing:,
          # Whether overage is enabled
          overage_enabled:,
          # Whether to preserve overage balance when credits reset
          preserve_overage_at_reset:,
          # Proration behavior for credit grants during plan changes
          proration_behavior:,
          # Whether rollover is enabled
          rollover_enabled:,
          # Whether trial credits expire after trial
          trial_credits_expire_after_trial:,
          # Currency
          currency: nil,
          # Days until credits expire
          expires_after_days: nil,
          # Low balance threshold percentage
          low_balance_threshold_percent: nil,
          # Maximum rollover cycles
          max_rollover_count: nil,
          # Overage limit
          overage_limit: nil,
          # Price per unit
          price_per_unit: nil,
          # Rollover percentage
          rollover_percentage: nil,
          # Rollover timeframe count
          rollover_timeframe_count: nil,
          # Rollover timeframe interval
          rollover_timeframe_interval: nil,
          # Trial credits
          trial_credits: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              credit_entitlement_id: String,
              credit_entitlement_name: String,
              credit_entitlement_unit: String,
              credits_amount: String,
              credits_reduce_overage: T::Boolean,
              overage_charge_at_billing: T::Boolean,
              overage_enabled: T::Boolean,
              preserve_overage_at_reset: T::Boolean,
              proration_behavior:
                Dodopayments::Product::CreditEntitlement::ProrationBehavior::TaggedSymbol,
              rollover_enabled: T::Boolean,
              trial_credits_expire_after_trial: T::Boolean,
              currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
              expires_after_days: T.nilable(Integer),
              low_balance_threshold_percent: T.nilable(Integer),
              max_rollover_count: T.nilable(Integer),
              overage_limit: T.nilable(String),
              price_per_unit: T.nilable(String),
              rollover_percentage: T.nilable(Integer),
              rollover_timeframe_count: T.nilable(Integer),
              rollover_timeframe_interval:
                T.nilable(Dodopayments::TimeInterval::TaggedSymbol),
              trial_credits: T.nilable(String)
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
                Dodopayments::Product::CreditEntitlement::ProrationBehavior
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRORATE =
            T.let(
              :prorate,
              Dodopayments::Product::CreditEntitlement::ProrationBehavior::TaggedSymbol
            )
          NO_PRORATE =
            T.let(
              :no_prorate,
              Dodopayments::Product::CreditEntitlement::ProrationBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Product::CreditEntitlement::ProrationBehavior::TaggedSymbol
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
              Dodopayments::Product::DigitalProductDelivery,
              Dodopayments::Internal::AnyHash
            )
          end

        # External URL to digital product
        sig { returns(T.nilable(String)) }
        attr_accessor :external_url

        # Uploaded files ids of digital product
        sig do
          returns(
            T.nilable(
              T::Array[Dodopayments::Product::DigitalProductDelivery::File]
            )
          )
        end
        attr_accessor :files

        # Instructions to download and use the digital product
        sig { returns(T.nilable(String)) }
        attr_accessor :instructions

        sig do
          params(
            external_url: T.nilable(String),
            files:
              T.nilable(
                T::Array[
                  Dodopayments::Product::DigitalProductDelivery::File::OrHash
                ]
              ),
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
              files:
                T.nilable(
                  T::Array[Dodopayments::Product::DigitalProductDelivery::File]
                ),
              instructions: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class File < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Product::DigitalProductDelivery::File,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :file_id

          sig { returns(String) }
          attr_accessor :file_name

          sig { returns(String) }
          attr_accessor :url

          sig do
            params(file_id: String, file_name: String, url: String).returns(
              T.attached_class
            )
          end
          def self.new(file_id:, file_name:, url:)
          end

          sig do
            override.returns(
              { file_id: String, file_name: String, url: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end

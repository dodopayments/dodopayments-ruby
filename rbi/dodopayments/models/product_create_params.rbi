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

      # Optional name of the product
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          price:
            T.any(
              Dodopayments::Price::OneTimePrice::OrHash,
              Dodopayments::Price::RecurringPrice::OrHash,
              Dodopayments::Price::UsageBasedPrice::OrHash
            ),
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          addons: T.nilable(T::Array[String]),
          brand_id: T.nilable(String),
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
          name: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Price configuration for the product
        price:,
        # Tax category applied to this product
        tax_category:,
        # Addons available for subscription product
        addons: nil,
        # Brand id for the product, if not provided will default to primary brand
        brand_id: nil,
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
        # Optional name of the product
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            price:
              T.any(
                Dodopayments::Price::OneTimePrice,
                Dodopayments::Price::RecurringPrice,
                Dodopayments::Price::UsageBasedPrice
              ),
            tax_category: Dodopayments::TaxCategory::OrSymbol,
            addons: T.nilable(T::Array[String]),
            brand_id: T.nilable(String),
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
            name: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
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

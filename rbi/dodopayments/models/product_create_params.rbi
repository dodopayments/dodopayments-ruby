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
        returns(T.nilable(T::Array[Dodopayments::AttachCreditEntitlement]))
      end
      attr_accessor :credit_entitlements

      # Optional description of the product
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Choose how you would like you digital product delivered
      #
      # deprecated: use entitlements instead
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

      # Optional entitlements to attach to this product (max 20)
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::ProductCreateParams::Entitlement])
        )
      end
      attr_accessor :entitlements

      # Optional message displayed during license key activation
      #
      # deprecated: use entitlements instead. Ignored when a `license_key` entitlement
      # is attached via the `entitlements` field.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # The number of times the license key can be activated. Must be 0 or greater
      #
      # deprecated: use entitlements instead. Ignored when a `license_key` entitlement
      # is attached via the `entitlements` field.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :license_key_activations_limit

      # Duration configuration for the license key. Set to null if you don't want the
      # license key to expire. For subscriptions, the lifetime of the license key is
      # tied to the subscription period
      #
      # deprecated: use entitlements instead. Ignored when a `license_key` entitlement
      # is attached via the `entitlements` field.
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
      #
      # deprecated: use entitlements instead. If a `license_key` entitlement is also
      # attached via the `entitlements` field, the `license_key_*` config fields below
      # are ignored — the attached entitlement's config is the source of truth.
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
            T.nilable(T::Array[Dodopayments::AttachCreditEntitlement::OrHash]),
          description: T.nilable(String),
          digital_product_delivery:
            T.nilable(
              Dodopayments::ProductCreateParams::DigitalProductDelivery::OrHash
            ),
          entitlements:
            T.nilable(
              T::Array[Dodopayments::ProductCreateParams::Entitlement::OrHash]
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
        #
        # deprecated: use entitlements instead
        digital_product_delivery: nil,
        # Optional entitlements to attach to this product (max 20)
        entitlements: nil,
        # Optional message displayed during license key activation
        #
        # deprecated: use entitlements instead. Ignored when a `license_key` entitlement
        # is attached via the `entitlements` field.
        license_key_activation_message: nil,
        # The number of times the license key can be activated. Must be 0 or greater
        #
        # deprecated: use entitlements instead. Ignored when a `license_key` entitlement
        # is attached via the `entitlements` field.
        license_key_activations_limit: nil,
        # Duration configuration for the license key. Set to null if you don't want the
        # license key to expire. For subscriptions, the lifetime of the license key is
        # tied to the subscription period
        #
        # deprecated: use entitlements instead. Ignored when a `license_key` entitlement
        # is attached via the `entitlements` field.
        license_key_duration: nil,
        # When true, generates and sends a license key to your customer. Defaults to false
        #
        # deprecated: use entitlements instead. If a `license_key` entitlement is also
        # attached via the `entitlements` field, the `license_key_*` config fields below
        # are ignored — the attached entitlement's config is the source of truth.
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
              T.nilable(T::Array[Dodopayments::AttachCreditEntitlement]),
            description: T.nilable(String),
            digital_product_delivery:
              T.nilable(
                Dodopayments::ProductCreateParams::DigitalProductDelivery
              ),
            entitlements:
              T.nilable(
                T::Array[Dodopayments::ProductCreateParams::Entitlement]
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
        #
        # deprecated: use entitlements instead
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

      class Entitlement < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCreateParams::Entitlement,
              Dodopayments::Internal::AnyHash
            )
          end

        # ID of the entitlement to attach to the product
        sig { returns(String) }
        attr_accessor :entitlement_id

        # Request struct for attaching an entitlement to a product.
        #
        # Mirrors the `credit_entitlements` attach shape — every "attach something to a
        # product" array takes objects, not bare IDs. Uniform shape leaves room for
        # per-attachment settings later without another API break.
        sig { params(entitlement_id: String).returns(T.attached_class) }
        def self.new(
          # ID of the entitlement to attach to the product
          entitlement_id:
        )
        end

        sig { override.returns({ entitlement_id: String }) }
        def to_hash
        end
      end
    end
  end
end

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

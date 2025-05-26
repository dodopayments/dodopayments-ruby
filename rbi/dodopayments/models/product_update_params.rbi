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

      # Description of the product, optional and must be at most 1000 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

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

      # Name of the product, optional and must be at most 100 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        returns(
          T.nilable(
            T.any(
              Dodopayments::Price::OneTimePrice,
              Dodopayments::Price::RecurringPrice
            )
          )
        )
      end
      attr_accessor :price

      # Represents the different categories of taxation applicable to various products
      # and services.
      sig { returns(T.nilable(Dodopayments::TaxCategory::OrSymbol)) }
      attr_accessor :tax_category

      sig do
        params(
          addons: T.nilable(T::Array[String]),
          brand_id: T.nilable(String),
          description: T.nilable(String),
          image_id: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash),
          license_key_enabled: T.nilable(T::Boolean),
          name: T.nilable(String),
          price:
            T.nilable(
              T.any(
                Dodopayments::Price::OneTimePrice::OrHash,
                Dodopayments::Price::RecurringPrice::OrHash
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
        # Description of the product, optional and must be at most 1000 characters.
        description: nil,
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
        license_key_duration: nil,
        # Whether the product requires a license key.
        #
        # If `true`, additional fields related to license key (duration, activations
        # limit, activation message) become applicable.
        license_key_enabled: nil,
        # Name of the product, optional and must be at most 100 characters.
        name: nil,
        price: nil,
        # Represents the different categories of taxation applicable to various products
        # and services.
        tax_category: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            addons: T.nilable(T::Array[String]),
            brand_id: T.nilable(String),
            description: T.nilable(String),
            image_id: T.nilable(String),
            license_key_activation_message: T.nilable(String),
            license_key_activations_limit: T.nilable(Integer),
            license_key_duration: T.nilable(Dodopayments::LicenseKeyDuration),
            license_key_enabled: T.nilable(T::Boolean),
            name: T.nilable(String),
            price:
              T.nilable(
                T.any(
                  Dodopayments::Price::OneTimePrice,
                  Dodopayments::Price::RecurringPrice
                )
              ),
            tax_category: T.nilable(Dodopayments::TaxCategory::OrSymbol),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

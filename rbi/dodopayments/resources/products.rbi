# typed: strong

module Dodopayments
  module Resources
    class Products
      sig { returns(Dodopayments::Resources::Products::Images) }
      attr_reader :images

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
        ).returns(Dodopayments::Product)
      end
      def create(
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
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Product)
      end
      def retrieve(
        # Product Id
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          addons: T.nilable(T::Array[String]),
          brand_id: T.nilable(String),
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
        ).void
      end
      def update(
        id,
        # Available Addons for subscription products
        addons: nil,
        brand_id: nil,
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
        params(
          archived: T::Boolean,
          brand_id: String,
          page_number: Integer,
          page_size: Integer,
          recurring: T::Boolean,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::ProductListResponse
          ]
        )
      end
      def list(
        # List archived products
        archived: nil,
        # filter by Brand id
        brand_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter products by pricing type:
        #
        # - `true`: Show only recurring pricing products (e.g. subscriptions)
        # - `false`: Show only one-time price products
        # - `null` or absent: Show both types of products
        recurring: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def archive(id, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def unarchive(id, request_options: {})
      end

      sig do
        params(
          id: String,
          file_name: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::ProductUpdateFilesResponse)
      end
      def update_files(
        # Product Id
        id,
        file_name:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

# typed: strong

module DodoPayments
  module Resources
    class Products
      sig { returns(DodoPayments::Resources::Products::Images) }
      def images
      end

      sig do
        params(
          price: T.any(
            DodoPayments::Models::ProductCreateParams::Price::OneTimePrice,
            DodoPayments::Models::ProductCreateParams::Price::RecurringPrice
          ),
          tax_category: Symbol,
          description: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(DodoPayments::Models::ProductCreateParams::LicenseKeyDuration),
          license_key_enabled: T.nilable(T::Boolean),
          name: T.nilable(String),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Product)
      end
      def create(
        price:,
        # Represents the different categories of taxation applicable to various products
        #   and services.
        tax_category:,
        # Optional description of the product
        description: nil,
        # Optional message displayed during license key activation
        license_key_activation_message: nil,
        # The number of times the license key can be activated. Must be 0 or greater
        license_key_activations_limit: nil,
        license_key_duration: nil,
        # When true, generates and sends a license key to your customer. Defaults to false
        license_key_enabled: nil,
        # Optional name of the product
        name: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Product)
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
          description: T.nilable(String),
          image_id: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(DodoPayments::Models::ProductUpdateParams::LicenseKeyDuration),
          license_key_enabled: T.nilable(T::Boolean),
          name: T.nilable(String),
          price: T.nilable(
            T.any(
              DodoPayments::Models::ProductUpdateParams::Price::OneTimePrice,
              DodoPayments::Models::ProductUpdateParams::Price::RecurringPrice
            )
          ),
          tax_category: T.nilable(Symbol),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def update(
        id,
        # Description of the product, optional and must be at most 1000 characters.
        description: nil,
        # Product image id after its uploaded to S3
        image_id: nil,
        # Message sent to the customer upon license key activation.
        #
        #   Only applicable if `license_key_enabled` is `true`. This message contains
        #   instructions for activating the license key.
        license_key_activation_message: nil,
        # Limit for the number of activations for the license key.
        #
        #   Only applicable if `license_key_enabled` is `true`. Represents the maximum
        #   number of times the license key can be activated.
        license_key_activations_limit: nil,
        license_key_duration: nil,
        # Whether the product requires a license key.
        #
        #   If `true`, additional fields related to license key (duration, activations
        #   limit, activation message) become applicable.
        license_key_enabled: nil,
        # Name of the product, optional and must be at most 100 characters.
        name: nil,
        price: nil,
        # Represents the different categories of taxation applicable to various products
        #   and services.
        tax_category: nil,
        request_options: {}
      )
      end

      sig do
        params(
          archived: T::Boolean,
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          recurring: T.nilable(T::Boolean),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::DefaultPageNumberPagination[DodoPayments::Models::ProductListResponse])
      end
      def list(
        # List archived products
        archived: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter products by pricing type:
        #
        #   - `true`: Show only recurring pricing products (e.g. subscriptions)
        #   - `false`: Show only one-time price products
        #   - `null` or absent: Show both types of products
        recurring: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def delete(id, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def unarchive(id, request_options: {})
      end

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

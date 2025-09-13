# typed: strong

module Dodopayments
  module Models
    class LicenseActivateResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::LicenseActivateResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # License key instance ID
      sig { returns(String) }
      attr_accessor :id

      # Business ID
      sig { returns(String) }
      attr_accessor :business_id

      # Creation timestamp
      sig { returns(Time) }
      attr_accessor :created_at

      # Limited customer details associated with the license key.
      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      # Associated license key ID
      sig { returns(String) }
      attr_accessor :license_key_id

      # Instance name
      sig { returns(String) }
      attr_accessor :name

      # Related product info. Present if the license key is tied to a product.
      sig { returns(Dodopayments::Models::LicenseActivateResponse::Product) }
      attr_reader :product

      sig do
        params(
          product:
            Dodopayments::Models::LicenseActivateResponse::Product::OrHash
        ).void
      end
      attr_writer :product

      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          license_key_id: String,
          name: String,
          product:
            Dodopayments::Models::LicenseActivateResponse::Product::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # License key instance ID
        id:,
        # Business ID
        business_id:,
        # Creation timestamp
        created_at:,
        # Limited customer details associated with the license key.
        customer:,
        # Associated license key ID
        license_key_id:,
        # Instance name
        name:,
        # Related product info. Present if the license key is tied to a product.
        product:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_id: String,
            created_at: Time,
            customer: Dodopayments::CustomerLimitedDetails,
            license_key_id: String,
            name: String,
            product: Dodopayments::Models::LicenseActivateResponse::Product
          }
        )
      end
      def to_hash
      end

      class Product < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::LicenseActivateResponse::Product,
              Dodopayments::Internal::AnyHash
            )
          end

        # Unique identifier for the product.
        sig { returns(String) }
        attr_accessor :product_id

        # Name of the product, if set by the merchant.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Related product info. Present if the license key is tied to a product.
        sig do
          params(product_id: String, name: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier for the product.
          product_id:,
          # Name of the product, if set by the merchant.
          name: nil
        )
        end

        sig do
          override.returns({ product_id: String, name: T.nilable(String) })
        end
        def to_hash
        end
      end
    end
  end
end

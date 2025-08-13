# typed: strong

module Dodopayments
  module Models
    class LicenseKeyListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::LicenseKeyListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Filter by customer ID
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by product ID
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # Filter by license key status
      sig do
        returns(T.nilable(Dodopayments::LicenseKeyListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(
          status: Dodopayments::LicenseKeyListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          product_id: String,
          status: Dodopayments::LicenseKeyListParams::Status::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by customer ID
        customer_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by product ID
        product_id: nil,
        # Filter by license key status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            product_id: String,
            status: Dodopayments::LicenseKeyListParams::Status::OrSymbol,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by license key status
      module Status
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::LicenseKeyListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Dodopayments::LicenseKeyListParams::Status::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :expired,
            Dodopayments::LicenseKeyListParams::Status::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Dodopayments::LicenseKeyListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::LicenseKeyListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

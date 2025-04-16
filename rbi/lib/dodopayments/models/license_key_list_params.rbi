# typed: strong

module Dodopayments
  module Models
    class LicenseKeyListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Filter by customer ID
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      # Filter by product ID
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # Filter by license key status
      sig { returns(T.nilable(Dodopayments::Models::LicenseKeyStatus::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          product_id: T.nilable(String),
          status: T.nilable(Dodopayments::Models::LicenseKeyStatus::OrSymbol),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        customer_id: nil,
        page_number: nil,
        page_size: nil,
        product_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              customer_id: T.nilable(String),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              product_id: T.nilable(String),
              status: T.nilable(Dodopayments::Models::LicenseKeyStatus::OrSymbol),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end

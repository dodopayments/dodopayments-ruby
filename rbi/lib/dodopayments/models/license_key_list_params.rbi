# typed: strong

module Dodopayments
  module Models
    class LicenseKeyListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Filter by customer ID
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      def page_number
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def page_number=(_)
      end

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def page_size=(_)
      end

      # Filter by product ID
      sig { returns(T.nilable(String)) }
      def product_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def product_id=(_)
      end

      # Filter by license key status
      sig { returns(T.nilable(Dodopayments::Models::LicenseKeyStatus::OrSymbol)) }
      def status
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::LicenseKeyStatus::OrSymbol))
          .returns(T.nilable(Dodopayments::Models::LicenseKeyStatus::OrSymbol))
      end
      def status=(_)
      end

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

# typed: strong

module Dodopayments
  module Models
    class DiscountListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DiscountListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Filter by active status (true = not expired, false = expired)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # Filter by discount code (partial match, case-insensitive)
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # Filter by discount type (percentage)
      sig { returns(T.nilable(Dodopayments::DiscountType::OrSymbol)) }
      attr_reader :discount_type

      sig { params(discount_type: Dodopayments::DiscountType::OrSymbol).void }
      attr_writer :discount_type

      # Page number (default = 0).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size (default = 10, max = 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by product restriction (only discounts that apply to this product)
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      sig do
        params(
          active: T::Boolean,
          code: String,
          discount_type: Dodopayments::DiscountType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          product_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by active status (true = not expired, false = expired)
        active: nil,
        # Filter by discount code (partial match, case-insensitive)
        code: nil,
        # Filter by discount type (percentage)
        discount_type: nil,
        # Page number (default = 0).
        page_number: nil,
        # Page size (default = 10, max = 100).
        page_size: nil,
        # Filter by product restriction (only discounts that apply to this product)
        product_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active: T::Boolean,
            code: String,
            discount_type: Dodopayments::DiscountType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            product_id: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

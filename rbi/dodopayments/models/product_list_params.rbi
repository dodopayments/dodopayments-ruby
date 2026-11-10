# typed: strong

module Dodopayments
  module Models
    class ProductListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # List archived products
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archived

      sig { params(archived: T::Boolean).void }
      attr_writer :archived

      # filter by Brand id
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

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

      # Filter products by pricing type:
      #
      # - `true`: Show only recurring pricing products (e.g. subscriptions)
      # - `false`: Show only one-time price products
      # - `null` or absent: Show both types of products
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :recurring

      sig { params(recurring: T::Boolean).void }
      attr_writer :recurring

      sig do
        params(
          archived: T::Boolean,
          brand_id: String,
          page_number: Integer,
          page_size: Integer,
          recurring: T::Boolean,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        override.returns(
          {
            archived: T::Boolean,
            brand_id: String,
            page_number: Integer,
            page_size: Integer,
            recurring: T::Boolean,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

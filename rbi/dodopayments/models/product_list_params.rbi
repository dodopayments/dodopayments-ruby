# typed: strong

module Dodopayments
  module Models
    class ProductListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      # List archived products
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archived

      sig { params(archived: T::Boolean).void }
      attr_writer :archived

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      # Filter products by pricing type:
      #
      # - `true`: Show only recurring pricing products (e.g. subscriptions)
      # - `false`: Show only one-time price products
      # - `null` or absent: Show both types of products
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :recurring

      sig do
        params(
          archived: T::Boolean,
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          recurring: T.nilable(T::Boolean),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List archived products
        archived: nil,
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
            page_number: T.nilable(Integer),
            page_size: T.nilable(Integer),
            recurring: T.nilable(T::Boolean),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

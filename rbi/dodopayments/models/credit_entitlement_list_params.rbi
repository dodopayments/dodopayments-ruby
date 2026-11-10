# typed: strong

module Dodopayments
  module Models
    class CreditEntitlementListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditEntitlementListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # List deleted credit entitlements
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :deleted

      sig { params(deleted: T::Boolean).void }
      attr_writer :deleted

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

      sig do
        params(
          deleted: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List deleted credit entitlements
        deleted: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            deleted: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

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

      # Page number (default = 0).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size (default = 10, max = 100).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      sig do
        params(
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Page number (default = 0).
        page_number: nil,
        # Page size (default = 10, max = 100).
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page_number: T.nilable(Integer),
            page_size: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

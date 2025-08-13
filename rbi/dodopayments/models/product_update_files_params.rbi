# typed: strong

module Dodopayments
  module Models
    class ProductUpdateFilesParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductUpdateFilesParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :file_name

      sig do
        params(
          file_name: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(file_name:, request_options: {})
      end

      sig do
        override.returns(
          { file_name: String, request_options: Dodopayments::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end

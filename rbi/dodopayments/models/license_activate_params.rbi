# typed: strong

module Dodopayments
  module Models
    class LicenseActivateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :license_key

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          license_key: String,
          name: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(license_key:, name:, request_options: {})
      end

      sig do
        override.returns(
          {
            license_key: String,
            name: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

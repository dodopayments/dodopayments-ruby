# typed: strong

module Dodopayments
  module Models
    class LicenseDeactivateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :license_key

      sig { returns(String) }
      attr_accessor :license_key_instance_id

      sig do
        params(
          license_key: String,
          license_key_instance_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(license_key:, license_key_instance_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            license_key: String,
            license_key_instance_id: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

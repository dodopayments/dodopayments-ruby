# typed: strong

module Dodopayments
  module Models
    class LicenseValidateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(String) }
      attr_accessor :license_key

      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_instance_id

      sig do
        params(
          license_key: String,
          license_key_instance_id: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(license_key:, license_key_instance_id: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              license_key: String,
              license_key_instance_id: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end

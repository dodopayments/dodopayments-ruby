# typed: strong

module Dodopayments
  module Models
    class LicenseValidateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(String) }
      def license_key
      end

      sig { params(_: String).returns(String) }
      def license_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def license_key_instance_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def license_key_instance_id=(_)
      end

      sig do
        params(
          license_key: String,
          license_key_instance_id: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(license_key:, license_key_instance_id: nil, request_options: {})
      end

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
      def to_hash
      end
    end
  end
end

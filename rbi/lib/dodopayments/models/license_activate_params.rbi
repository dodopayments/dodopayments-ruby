# typed: strong

module Dodopayments
  module Models
    class LicenseActivateParams < Dodopayments::BaseModel
      extend Dodopayments::Type::RequestParameters::Converter
      include Dodopayments::RequestParameters

      sig { returns(String) }
      def license_key
      end

      sig { params(_: String).returns(String) }
      def license_key=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          license_key: String,
          name: String,
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(license_key:, name:, request_options: {})
      end

      sig do
        override.returns({license_key: String, name: String, request_options: Dodopayments::RequestOptions})
      end
      def to_hash
      end
    end
  end
end

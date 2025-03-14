# typed: strong

module DodoPayments
  module Resources
    class Licenses
      sig do
        params(
          license_key: String,
          name: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::LicenseKeyInstance)
      end
      def activate(license_key:, name:, request_options: {})
      end

      sig do
        params(
          license_key: String,
          license_key_instance_id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def deactivate(license_key:, license_key_instance_id:, request_options: {})
      end

      sig do
        params(
          license_key: String,
          license_key_instance_id: T.nilable(String),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::LicenseValidateResponse)
      end
      def validate(license_key:, license_key_instance_id: nil, request_options: {})
      end

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

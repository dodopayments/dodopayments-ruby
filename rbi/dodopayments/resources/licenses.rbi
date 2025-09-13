# typed: strong

module Dodopayments
  module Resources
    class Licenses
      sig do
        params(
          license_key: String,
          name: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::LicenseActivateResponse)
      end
      def activate(license_key:, name:, request_options: {})
      end

      sig do
        params(
          license_key: String,
          license_key_instance_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def deactivate(
        license_key:,
        license_key_instance_id:,
        request_options: {}
      )
      end

      sig do
        params(
          license_key: String,
          license_key_instance_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::LicenseValidateResponse)
      end
      def validate(
        license_key:,
        license_key_instance_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

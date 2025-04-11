# typed: strong

module Dodopayments
  module Resources
    class LicenseKeyInstances
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Models::LicenseKeyInstance)
      end
      def retrieve(
        # License key instance ID
        id,
        request_options: {}
      ); end
      sig do
        params(
          id: String,
          name: String,
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Models::LicenseKeyInstance)
      end
      def update(
        # License key instance ID
        id,
        name:,
        request_options: {}
      ); end
      sig do
        params(
          license_key_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Internal::DefaultPageNumberPagination[Dodopayments::Models::LicenseKeyInstance])
      end
      def list(
        # Filter by license key ID
        license_key_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end

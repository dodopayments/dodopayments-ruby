# typed: strong

module Dodopayments
  module Resources
    class LicenseKeys
      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::LicenseKey)
      end
      def retrieve(
        # License key ID
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          activations_limit: T.nilable(Integer),
          disabled: T.nilable(T::Boolean),
          expires_at: T.nilable(Time),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::LicenseKey)
      end
      def update(
        # License key ID
        id,
        # The updated activation limit for the license key. Use `null` to remove the
        # limit, or omit this field to leave it unchanged.
        activations_limit: nil,
        # Indicates whether the license key should be disabled. A value of `true` disables
        # the key, while `false` enables it. Omit this field to leave it unchanged.
        disabled: nil,
        # The updated expiration timestamp for the license key in UTC. Use `null` to
        # remove the expiration date, or omit this field to leave it unchanged.
        expires_at: nil,
        request_options: {}
      )
      end

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          product_id: String,
          status: Dodopayments::LicenseKeyListParams::Status::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::LicenseKey
          ]
        )
      end
      def list(
        # Filter license keys created on or after this timestamp
        created_at_gte: nil,
        # Filter license keys created on or before this timestamp
        created_at_lte: nil,
        # Filter by customer ID
        customer_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by product ID
        product_id: nil,
        # Filter by license key status
        status: nil,
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

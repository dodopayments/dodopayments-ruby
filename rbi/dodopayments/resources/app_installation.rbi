# typed: strong

module Dodopayments
  module Resources
    class AppInstallation
      # The settings of the App Installation of the app token, with the secret values.
      # The token grant gives the installation. The token needs `app_settings:read`.
      sig do
        params(request_options: Dodopayments::RequestOptions::OrHash).returns(
          Dodopayments::Models::AppInstallationRetrieveSettingsResponse
        )
      end
      def retrieve_settings(request_options: {})
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Resources
    class AppInstallation
      # The settings of the App Installation of the app token, with the secret values.
      # The token grant gives the installation. The token needs `app_settings:read`.
      #
      # @overload retrieve_settings(request_options: {})
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::AppInstallationRetrieveSettingsResponse]
      #
      # @see Dodopayments::Models::AppInstallationRetrieveSettingsParams
      def retrieve_settings(params = {})
        @client.request(
          method: :get,
          path: "app-installation/settings",
          model: Dodopayments::Models::AppInstallationRetrieveSettingsResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

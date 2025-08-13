# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Webhooks#retrieve_secret
    class WebhookRetrieveSecretResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute secret
      #
      #   @return [String]
      required :secret, String

      # @!method initialize(secret:)
      #   @param secret [String]
    end
  end
end

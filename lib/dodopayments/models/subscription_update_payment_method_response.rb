# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update_payment_method
    class SubscriptionUpdatePaymentMethodResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute client_secret
      #
      #   @return [String, nil]
      optional :client_secret, String, nil?: true

      # @!attribute expires_on
      #
      #   @return [Time, nil]
      optional :expires_on, Time, nil?: true

      # @!attribute payment_id
      #
      #   @return [String, nil]
      optional :payment_id, String, nil?: true

      # @!attribute payment_link
      #
      #   @return [String, nil]
      optional :payment_link, String, nil?: true

      # @!method initialize(client_secret: nil, expires_on: nil, payment_id: nil, payment_link: nil)
      #   @param client_secret [String, nil]
      #   @param expires_on [Time, nil]
      #   @param payment_id [String, nil]
      #   @param payment_link [String, nil]
    end
  end
end

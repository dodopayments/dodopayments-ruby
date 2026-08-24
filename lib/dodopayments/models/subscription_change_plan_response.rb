# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#change_plan
    class SubscriptionChangePlanResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute client_secret
      #   Client secret for an embedded checkout.
      #
      #   @return [String, nil]
      optional :client_secret, String, nil?: true

      # @!attribute expires_on
      #   When the link stops working.
      #
      #   @return [Time, nil]
      optional :expires_on, Time, nil?: true

      # @!attribute payment_id
      #   Id of the payment that settles the plan change.
      #
      #   @return [String, nil]
      optional :payment_id, String, nil?: true

      # @!attribute payment_link
      #   Checkout page URL. Give this to the customer.
      #
      #   @return [String, nil]
      optional :payment_link, String, nil?: true

      # @!method initialize(client_secret: nil, expires_on: nil, payment_id: nil, payment_link: nil)
      #   Handles for a hosted checkout page that settles a plan change.
      #
      #   The four fields repeat `UpdatePaymentMethodResponse` and a subset of
      #   `CreateSubscriptionResponse`. A shared type would rename the generated SDK types
      #   for all three routes, so each route keeps its own.
      #
      #   @param client_secret [String, nil] Client secret for an embedded checkout.
      #
      #   @param expires_on [Time, nil] When the link stops working.
      #
      #   @param payment_id [String, nil] Id of the payment that settles the plan change.
      #
      #   @param payment_link [String, nil] Checkout page URL. Give this to the customer.
    end
  end
end

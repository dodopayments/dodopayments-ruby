# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::CheckoutSessions#create
    class CheckoutSessionResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute session_id
      #   The ID of the created checkout session
      #
      #   @return [String]
      required :session_id, String

      # @!attribute checkout_url
      #   Checkout url (None when payment_method_id is provided)
      #
      #   @return [String, nil]
      optional :checkout_url, String, nil?: true

      # @!method initialize(session_id:, checkout_url: nil)
      #   @param session_id [String] The ID of the created checkout session
      #
      #   @param checkout_url [String, nil] Checkout url (None when payment_method_id is provided)
    end
  end
end

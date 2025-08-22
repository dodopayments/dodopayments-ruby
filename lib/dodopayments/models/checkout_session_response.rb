# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::CheckoutSessions#create
    class CheckoutSessionResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute checkout_url
      #   Checkout url
      #
      #   @return [String]
      required :checkout_url, String

      # @!attribute session_id
      #   The ID of the created checkout session
      #
      #   @return [String]
      required :session_id, String

      # @!method initialize(checkout_url:, session_id:)
      #   @param checkout_url [String] Checkout url
      #
      #   @param session_id [String] The ID of the created checkout session
    end
  end
end

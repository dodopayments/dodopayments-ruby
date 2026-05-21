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

      # @!attribute client_secret
      #   Client secret used to load the Dodo Payments checkout SDK. Returned when
      #   `confirm: true` was passed and a PaymentIntent was created at session-creation
      #   time. `None` otherwise.
      #
      #   @return [String, nil]
      optional :client_secret, String, nil?: true

      # @!attribute payment_id
      #   Underlying payment id when `confirm: true` was passed and a PaymentIntent was
      #   created at session-creation time. `None` otherwise.
      #
      #   @return [String, nil]
      optional :payment_id, String, nil?: true

      # @!attribute publishable_key
      #   Publishable key for the Dodo Payments checkout SDK. Returned when
      #   `confirm: true` was passed and a PaymentIntent was created at session-creation
      #   time. `None` otherwise.
      #
      #   @return [String, nil]
      optional :publishable_key, String, nil?: true

      # @!method initialize(session_id:, checkout_url: nil, client_secret: nil, payment_id: nil, publishable_key: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CheckoutSessionResponse} for more details.
      #
      #   @param session_id [String] The ID of the created checkout session
      #
      #   @param checkout_url [String, nil] Checkout url (None when payment_method_id is provided)
      #
      #   @param client_secret [String, nil] Client secret used to load the Dodo Payments checkout SDK. Returned when
      #
      #   @param payment_id [String, nil] Underlying payment id when `confirm: true` was passed and a PaymentIntent
      #
      #   @param publishable_key [String, nil] Publishable key for the Dodo Payments checkout SDK. Returned when
    end
  end
end

# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionCancelledBy < Dodopayments::Internal::Type::BaseModel
      # @!attribute actor_type
      #   The kind of caller.
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionCancelledBy::ActorType]
      required :actor_type, enum: -> { Dodopayments::SubscriptionCancelledBy::ActorType }

      # @!attribute email
      #   Email of the customer or of the dashboard user. `null` for an API key or the
      #   Dodo Payments team.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute name
      #   Name of the customer or of the dashboard user. `null` for an API key or the Dodo
      #   Payments team.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(actor_type:, email: nil, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionCancelledBy} for more details.
      #
      #   The caller that cancelled a subscription or scheduled its cancel.
      #
      #   @param actor_type [Symbol, Dodopayments::Models::SubscriptionCancelledBy::ActorType] The kind of caller.
      #
      #   @param email [String, nil] Email of the customer or of the dashboard user. `null` for an API key
      #
      #   @param name [String, nil] Name of the customer or of the dashboard user. `null` for an API key

      # The kind of caller.
      #
      # @see Dodopayments::Models::SubscriptionCancelledBy#actor_type
      module ActorType
        extend Dodopayments::Internal::Type::Enum

        CUSTOMER = :customer
        MERCHANT_USER = :merchant_user
        API_KEY = :api_key
        DODO_TEAM = :dodo_team

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

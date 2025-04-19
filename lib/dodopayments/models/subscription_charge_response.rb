# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#charge
    class SubscriptionChargeResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!method initialize(payment_id:)
      #   @param payment_id [String]
    end
  end
end

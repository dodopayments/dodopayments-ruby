# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#charge
    class SubscriptionChargeResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!parse
      #   # @param payment_id [String]
      #   #
      #   def initialize(payment_id:, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end

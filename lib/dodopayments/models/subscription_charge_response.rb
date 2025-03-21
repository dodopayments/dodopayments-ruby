# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionChargeResponse < Dodopayments::BaseModel
      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!parse
      #   # @param payment_id [String]
      #   #
      #   def initialize(payment_id:, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end

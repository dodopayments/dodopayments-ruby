# frozen_string_literal: true

module Dodopayments
  module Models
    class AttachExistingCustomer < Dodopayments::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   def initialize(customer_id:, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end

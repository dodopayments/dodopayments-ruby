# frozen_string_literal: true

module Dodopayments
  module Models
    class AttachExistingCustomer < Dodopayments::Internal::Type::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!method initialize(customer_id:)
      #   @param customer_id [String]
    end
  end
end

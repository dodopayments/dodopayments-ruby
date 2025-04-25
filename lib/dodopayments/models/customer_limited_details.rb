# frozen_string_literal: true

module Dodopayments
  module Models
    class CustomerLimitedDetails < Dodopayments::Internal::Type::BaseModel
      # @!attribute customer_id
      #   Unique identifier for the customer
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute email
      #   Email address of the customer
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   Full name of the customer
      #
      #   @return [String]
      required :name, String

      # @!method initialize(customer_id:, email:, name:)
      #   @param customer_id [String] Unique identifier for the customer
      #
      #   @param email [String] Email address of the customer
      #
      #   @param name [String] Full name of the customer
    end
  end
end
